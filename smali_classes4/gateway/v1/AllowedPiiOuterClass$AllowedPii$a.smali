###### Class gateway.v1.AllowedPiiOuterClass.AllowedPii.a (gateway.v1.AllowedPiiOuterClass$AllowedPii$a)
.class public final Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "AllowedPiiOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/AllowedPiiOuterClass$AllowedPii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$000()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/AllowedPiiOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->getIdfa()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->getIdfv()Z

    move-result v0

    return v0
.end method

.method public e(Z)Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$100(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

.method public f(Z)Lgateway/v1/AllowedPiiOuterClass$AllowedPii$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgateway/v1/AllowedPiiOuterClass$AllowedPii;->access$300(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method
