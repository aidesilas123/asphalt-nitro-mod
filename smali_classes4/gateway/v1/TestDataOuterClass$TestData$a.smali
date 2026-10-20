###### Class gateway.v1.TestDataOuterClass.TestData.a (gateway.v1.TestDataOuterClass$TestData$a)
.class public final Lgateway/v1/TestDataOuterClass$TestData$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "TestDataOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/TestDataOuterClass$TestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/TestDataOuterClass$TestData;",
        "Lgateway/v1/TestDataOuterClass$TestData$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/TestDataOuterClass$TestData;->access$000()Lgateway/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/TestDataOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/TestDataOuterClass$TestData$a;-><init>()V

    return-void
.end method
