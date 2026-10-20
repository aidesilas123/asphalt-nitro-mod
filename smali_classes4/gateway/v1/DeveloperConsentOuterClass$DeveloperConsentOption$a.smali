###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentOption.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentOption$a)
.class public final Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
.super Lcom/google/protobuf/GeneratedMessageLite$b;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lgateway/v1/DeveloperConsentOuterClass$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;",
        ">;",
        "Lgateway/v1/DeveloperConsentOuterClass$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$000()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgateway/v1/DeveloperConsentOuterClass$a;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getType()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$400(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$200(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V

    return-object p0
.end method

.method public f(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;
    .registers 3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$b;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->access$800(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V

    return-object p0
.end method
