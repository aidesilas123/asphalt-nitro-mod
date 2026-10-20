###### Class com.unity3d.services.core.device.reader.pii.PiiTrackingStatusReader (com.unity3d.services.core.device.reader.pii.PiiTrackingStatusReader)
.class public Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;
.super Ljava/lang/Object;
.source "PiiTrackingStatusReader.java"


# instance fields
.field private final _jsonStorageReader:Lcom/unity3d/services/core/misc/IJsonStorageReader;

.field private final _nonBehavioralFlagReader:Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/misc/IJsonStorageReader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->_jsonStorageReader:Lcom/unity3d/services/core/misc/IJsonStorageReader;

    new-instance v0, Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;

    invoke-direct {v0, p1}, Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;-><init>(Lcom/unity3d/services/core/misc/IJsonStorageReader;)V

    iput-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->_nonBehavioralFlagReader:Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;

    return-void
.end method

.method private getPrivacyMode(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->_jsonStorageReader:Lcom/unity3d/services/core/misc/IJsonStorageReader;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/misc/IJsonStorageReader;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->getPiiPrivacyMode(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object p1

    return-object p1
.end method

.method private getSpmPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;
    .registers 2

    const-string v0, "privacy.spm.value"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getPrivacyMode(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    return-object v0
.end method

.method private getUserPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;
    .registers 2

    const-string v0, "privacy.mode.value"

    invoke-direct {p0, v0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getPrivacyMode(Ljava/lang/String;)Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;
    .registers 3

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getUserPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->NULL:Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getSpmPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    if-ne v0, v1, :cond_f

    return-object v1

    :cond_f
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getUserPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->APP:Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    if-eq v0, v1, :cond_3f

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getSpmPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    if-ne v0, v1, :cond_1e

    goto :goto_3f

    :cond_1e
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getUserPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->MIXED:Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    if-eq v0, v1, :cond_3f

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getSpmPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    if-ne v0, v1, :cond_2d

    goto :goto_3f

    :cond_2d
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getUserPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->NONE:Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    if-eq v0, v1, :cond_3f

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getSpmPrivacyMode()Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    move-result-object v0

    if-ne v0, v1, :cond_3c

    goto :goto_3f

    :cond_3c
    sget-object v0, Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;->UNDEFINED:Lcom/unity3d/services/core/device/reader/pii/PiiPrivacyMode;

    return-object v0

    :cond_3f
    :goto_3f
    return-object v1
.end method

.method public getUserNonBehavioralFlag()Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->_nonBehavioralFlagReader:Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlagReader;->getUserNonBehavioralFlag()Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlag;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlag;->TRUE:Lcom/unity3d/services/core/device/reader/pii/NonBehavioralFlag;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
