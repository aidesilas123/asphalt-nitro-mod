###### Class gateway.v1.GetTokenEventRequestOuterClass.GetTokenEventRequest.a (gateway.v1.GetTokenEventRequestOuterClass$GetTokenEventRequest$a)
.class public final Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "GetTokenEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;->access$000()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/GetTokenEventRequestOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest$a;-><init>()V

    return-void
.end method
