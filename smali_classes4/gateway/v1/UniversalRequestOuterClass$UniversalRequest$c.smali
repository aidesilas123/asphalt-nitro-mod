###### Class gateway.v1.UniversalRequestOuterClass.UniversalRequest.c (gateway.v1.UniversalRequestOuterClass$UniversalRequest$c)
.class public interface abstract Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;
.super Ljava/lang/Object;
.source "UniversalRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract getAppStartTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
.end method

.method public abstract getPii()Lgateway/v1/PiiOuterClass$Pii;
.end method

.method public abstract getSdkStartTime()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getTestData()Lgateway/v1/TestDataOuterClass$TestData;
.end method

.method public abstract getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;
.end method

.method public abstract hasAppStartTime()Z
.end method

.method public abstract hasDeveloperConsent()Z
.end method

.method public abstract hasPii()Z
.end method

.method public abstract hasSdkStartTime()Z
.end method

.method public abstract hasTestData()Z
.end method

.method public abstract hasTimestamps()Z
.end method
