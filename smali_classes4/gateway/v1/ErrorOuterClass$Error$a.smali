###### Class gateway.v1.ErrorOuterClass.Error.a (gateway.v1.ErrorOuterClass$Error$a)
.class public final Lgateway/v1/ErrorOuterClass$Error$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "ErrorOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ErrorOuterClass$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/ErrorOuterClass$Error;",
        "Lgateway/v1/ErrorOuterClass$Error$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/ErrorOuterClass$Error;->access$000()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/ErrorOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/ErrorOuterClass$Error$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lgateway/v1/ErrorOuterClass$Error$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgateway/v1/ErrorOuterClass$Error;->access$100(Lgateway/v1/ErrorOuterClass$Error;Ljava/lang/String;)V

    return-object p0
.end method
