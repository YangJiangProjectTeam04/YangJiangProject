package com.teamRocket.shiro;

import com.teamRocket.domain.User;
import com.teamRocket.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Set;

/**
 * Created by dllo on 18/3/1.
 */
public class CustomRealm extends AuthorizingRealm{
    /*提供数据库用户、角色、权限查询的业务对象*/
    @Resource
    private UserService userService;

    /**
     * 授权，即给当前用户添加某些角色或者权限
     **/
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {

        /*1,获取认证通过的当前用户对象的用户名*/
        String loginName = (String) principals
                .getPrimaryPrincipal();

        /*2,根据用户名查询角色列表*/
        Set<String> roles = userService.getRoles(loginName);

        /*3,根据用户名查询权限列表*/
        Set<String> permissions = userService
                .getPermissions(loginName);

        /*4,构建授权信息对象*/
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

        /*5,给授权器添加角色和权限*/
        info.setRoles(roles);
        info.setStringPermissions(permissions);

        return info;
    }

    /**
     * 认证，即对某个用户名进行身份认证
     **/
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {

        UsernamePasswordToken token1= (UsernamePasswordToken) token;

        /*1,获取进行认证的用户名*/
        String loginName = token1.getUsername();
        String password = new String(token1.getPassword());

        System.out.println(loginName + "  " + password);

        /*2,根据登录名查找用户*/
        User user = userService.selectByloginName(loginName);

        /*如果能查到 则返回一个认证器对象，否则返回null*/
        if (user != null) {
            SimpleAuthenticationInfo info =
                    new SimpleAuthenticationInfo(
                            user.getLoginName(),
                            user.getPassword(),
                            getName());
            return info;
        }

        return null;
    }
}