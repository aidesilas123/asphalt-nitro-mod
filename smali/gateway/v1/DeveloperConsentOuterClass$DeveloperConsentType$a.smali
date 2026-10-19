###### Class gateway.v1.DeveloperConsentOuterClass.DeveloperConsentType.a (gateway.v1.DeveloperConsentOuterClass$DeveloperConsentType$a)
.class Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;
.super Ljava/lang/Object;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$d<",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 2

    invoke-static {p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$c;
    .registers 2

    invoke-virtual {p0, p1}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType$a;->a(I)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object p1

    return-object p1
.end method
