###### Class gateway.v1.AdResponseOuterClass.AdResponse.a (gateway.v1.AdResponseOuterClass$AdResponse$a)
.class public final Lgateway/v1/AdResponseOuterClass$AdResponse$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "AdResponseOuterClass.java"

# interfaces
.implements Lgateway/v1/AdResponseOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AdResponseOuterClass$AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/AdResponseOuterClass$AdResponse;",
        "Lgateway/v1/AdResponseOuterClass$AdResponse$a;",
        ">;",
        "Lgateway/v1/AdResponseOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/AdResponseOuterClass$AdResponse;->access$000()Lgateway/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/AdResponseOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/AdResponseOuterClass$AdResponse$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/protobuf/ByteString;)Lgateway/v1/AdResponseOuterClass$AdResponse$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgateway/v1/AdResponseOuterClass$AdResponse;->access$1200(Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public getError()Lgateway/v1/ErrorOuterClass$Error;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getError()Lgateway/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewConfiguration()Lgateway/v1/WebviewConfiguration$WebViewConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgateway/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasWebviewConfiguration()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgateway/v1/AdResponseOuterClass$AdResponse;->hasWebviewConfiguration()Z

    move-result v0

    return v0
.end method
