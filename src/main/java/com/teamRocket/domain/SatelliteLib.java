package com.teamRocket.domain;

import java.util.Date;

/**
 * Created by bobbi on 18/2/8.
 */
/*卫星库*/
public class SatelliteLib {
    private String BIMSStoreId;
    private String BIMSStoreName;
    private String manageStaffNo;
    private String manageStaffName;
    private String effectFlag;
    private String createStaffNo;
    private String createStaffName;
    private Date createDate;

    @Override
    public String toString() {
        return "SatelliteLib{" +
                "BIMSStoreId='" + BIMSStoreId + '\'' +
                ", BIMSStoreName='" + BIMSStoreName + '\'' +
                ", manageStaffNo='" + manageStaffNo + '\'' +
                ", manageStaffName='" + manageStaffName + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffName='" + createStaffName + '\'' +
                ", createDate=" + createDate +
                '}';
    }

    public SatelliteLib() {
    }

    public SatelliteLib(String BIMSStoreName, String manageStaffNo,
                        String manageStaffName, String effectFlag,
                        String createStaffNo, String createStaffName,
                        Date createDate) {

        this.BIMSStoreName = BIMSStoreName;
        this.manageStaffNo = manageStaffNo;
        this.manageStaffName = manageStaffName;
        this.effectFlag = effectFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffName = createStaffName;
        this.createDate = createDate;
    }

    public String getBIMSStoreId() {

        return BIMSStoreId;
    }

    public void setBIMSStoreId(String BIMSStoreId) {
        this.BIMSStoreId = BIMSStoreId;
    }

    public String getBIMSStoreName() {
        return BIMSStoreName;
    }

    public void setBIMSStoreName(String BIMSStoreName) {
        this.BIMSStoreName = BIMSStoreName;
    }

    public String getManageStaffNo() {
        return manageStaffNo;
    }

    public void setManageStaffNo(String manageStaffNo) {
        this.manageStaffNo = manageStaffNo;
    }

    public String getManageStaffName() {
        return manageStaffName;
    }

    public void setManageStaffName(String manageStaffName) {
        this.manageStaffName = manageStaffName;
    }

    public String getEffectFlag() {
        return effectFlag;
    }

    public void setEffectFlag(String effectFlag) {
        this.effectFlag = effectFlag;
    }

    public String getCreateStaffNo() {
        return createStaffNo;
    }

    public void setCreateStaffNo(String createStaffNo) {
        this.createStaffNo = createStaffNo;
    }

    public String getCreateStaffName() {
        return createStaffName;
    }

    public void setCreateStaffName(String createStaffName) {
        this.createStaffName = createStaffName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
