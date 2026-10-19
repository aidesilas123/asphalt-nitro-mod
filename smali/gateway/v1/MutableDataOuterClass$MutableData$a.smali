###### Class gateway.v1.MutableDataOuterClass.MutableData.a (gateway.v1.MutableDataOuterClass$MutableData$a)
.class public final Lgateway/v1/MutableDataOuterClass$MutableData$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "MutableDataOuterClass.java"

# interfaces
.implements Lgateway/v1/MutableDataOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/MutableDataOuterClass$MutableData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/MutableDataOuterClass$MutableData;",
        "Lgateway/v1/MutableDataOuterClass$MutableData$a;",
        ">;",
        "Lgateway/v1/MutableDataOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/MutableDataOuterClass$MutableData;->access$000()Lgateway/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/MutableDataOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/MutableDataOuterClass$MutableData$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedPii()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgateway/v1/MutableDataOuterClass$MutableData;->getAllowedPii()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgateway/v1/SessionCountersOuterClass$SessionCounters;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgateway/v1/MutableDataOuterClass$MutableData;->getSessionCounters()Lgateway/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowedPii()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgateway/v1/MutableDataOuterClass$MutableData;->hasAllowedPii()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgateway/v1/MutableDataOuterClass$MutableData;->hasSessionCounters()Z

    move-result v0

    return v0
.end method
