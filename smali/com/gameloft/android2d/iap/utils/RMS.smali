###### Class com.gameloft.android2d.iap.utils.RMS (com.gameloft.android2d.iap.utils.RMS)
.class public Lcom/gameloft/android2d/iap/utils/RMS;
.super Ljava/lang/Object;
.source "RMS.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetEncryptionKey()Ljava/lang/String;
    .registers 3

    const v0, 0x7f1203b9

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const-string v1, "IMEI"

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_19
    const-string v1, "HDIDFV"

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    if-eqz v1, :cond_2a

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move-object v0, v1

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-object v0
.end method

.method public static getDevPayload()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x39

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExtraData()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIAPLimtation()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastBillType()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastBillingResultURL()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastBillingType()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastContentID()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastCurrency()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static getLastFlowType()I
    .registers 2

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static getLastFormattedPrice()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x31

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static getLastItemDescription()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x44

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastItemName()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x43

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastItemTrackingUID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x32

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static getLastMoney()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastOfflineItems()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_20

    :cond_15
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastPackOrderPurchased()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x33

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "-1"

    return-object v0
.end method

.method public static getLastPrice()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static getLastProfileID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static getLastProxyPort()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastProxyServer()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPurchasedBundleInfo()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastPurchasedSubscriptionItemInfo()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x41

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastPurchasedSubscriptionRewardItemInfo()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastVerifyURL()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x16

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVirtualCurrency()J
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_15

    goto :goto_1d

    :cond_15
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-wide v1
.end method

.method public static getMoneySpent()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNotifyID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOppoAttach()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x45

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    return-object v1
.end method

.method public static getPackageId()I
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_17

    :cond_13
    :try_start_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    :goto_17
    return v1
.end method

.method public static getPackageType()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    const-string v0, ""

    return-object v0
.end method

.method public static getPendingTransactionResult()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProfileID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSMSCounter()I
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_13

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public static getSecurityString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSku()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x2d

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    return-object v1
.end method

.method public static getTextResendConfirmation()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextResendNo()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextResendYes()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTransactionID()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x27

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object v1

    :cond_12
    const-string v0, "11111"

    return-object v0
.end method

.method public static getUnlockCodeStored()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    const-string v0, ""

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getWAPPurchaseID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_f

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static increaseSMSCounter()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSMSCounter()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isDemoBuild()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1202a1

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f1202a2

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1c

    :catch_1c
    xor-int/2addr v0, v1

    return v0
.end method

.method public static isRedeemUnlocked()Z
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static isSMSSent()Z
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    return v1
.end method

.method public static itemUnlocked()Z
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static rmsLoad(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202e9

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_28

    :cond_1f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->GetEncryptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    :cond_28
    :goto_28
    return-object v0
.end method

.method public static rmsSave(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202e9

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_26

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->GetEncryptionKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_26
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method

.method public static rms_LoadInfo(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rms_SaveInfo(Ljava/lang/String;I)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveDevPayload(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x39

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveExtraData(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x46

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveIAPLimtation(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastCurrency(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastFlowType(I)V
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastOfflineItems([Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_21

    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    sget-object p0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object p0, p0, v1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastPackOrderPurchased(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x33

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastPrice(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastProfileID(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastPurchasedBundleInfo(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastPurchasedSubscriptionItemInfo(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x41

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastPurchasedSubscriptionRewardItemInfo(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveLastVirtualCurrency(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveMoneySpentAndProfileID(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveNotifyID(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveOppoAttach(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x45

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveOrderID(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static savePendingTransactionResult(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveSecurityString(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveSku(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x2d

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveUserID(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveVerificationInformation(Lcom/gameloft/android2d/iap/billings/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->z()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->V()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->u()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->E()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->D()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->s()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->c()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->r()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static saveWAPPurchaseID(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
