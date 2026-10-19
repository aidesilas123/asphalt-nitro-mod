###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling)
.class public Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.super Lcom/gameloft/android2d/iap/billings/a;
.source "GoogleBilling.java"


# static fields
.field private static R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

.field private static S:Z

.field private static T:I


# instance fields
.field private U:Ljava/lang/String;

.field V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

.field W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

.field X:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

.field Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

.field Z:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

.field a0:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/billings/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->X:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Z:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$b;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->a0:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const v0, 0x7f1202b0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    return-void
.end method

.method public static RequestSubscriptionStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyPort()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/gameloft/android2d/iap/utils/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_21
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetCRMUrl()Ljava/lang/String;

    move-result-object v1

    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/subscriptions/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12033a

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f12034b

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->NounceGenerator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->p(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->l(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_70
    const-string p0, "Subscriptions"

    invoke-virtual {v0, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->h(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_80

    const-wide/16 p0, 0x32

    :try_start_7a
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_70

    :catch_7e
    nop

    goto :goto_70

    :cond_80
    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p0

    if-nez p0, :cond_a4

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPCRMKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a4

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_a4
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->T:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    sput p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->T:I

    return p0
.end method

.method static synthetic access$310()I
    .registers 2

    sget v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->T:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->T:I

    return v0
.end method

.method public static handleActivityResult(IILandroid/content/Intent;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public static onDestroy()V
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->c()V

    :cond_7
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    return-void
.end method

.method public static setupGoogleBillingV3Done()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    return v0
.end method


# virtual methods
.method public D0()V
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->M0()V

    return-void
.end method

.method public E0()V
    .registers 7

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_e
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetCRMUrl()Ljava/lang/String;

    move-result-object v0

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120331

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f12036c

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1202b1

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f12037f

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120344

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120341

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120366

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getOrderID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120347

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_ba

    goto :goto_be

    :cond_ba
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v1

    :goto_be
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120348

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_FederationIsInitialized()Z

    move-result v1

    if-eqz v1, :cond_da

    const-string v1, "0"

    goto :goto_dc

    :cond_da
    const-string v1, "1"

    :goto_dc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120346

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12034b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120343

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v3, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyServer()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyPort()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/gameloft/android2d/iap/utils/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->NounceGenerator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->p(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->l(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public F0(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setItemTypeToBuy(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->getPackOrderPurchased(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPackOrderPurchased(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastVirtualCurrency(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPrice(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastProfileID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastCurrency(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveVerificationInformation(Lcom/gameloft/android2d/iap/billings/a;)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->K()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->getItemJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202cd

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gameloft/android2d/iap/IAPLib;->GetBundleItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedBundleInfo(Ljava/lang/String;)V

    goto :goto_e0

    :cond_a1
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202d0

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionItemInfo(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionRewardItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionRewardItemInfo(Ljava/lang/String;)V

    :cond_e0
    :goto_e0
    const/4 p1, 0x1

    return p1
.end method

.method public G0(Ljava/lang/String;Z)Z
    .registers 9

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    :try_start_11
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_75

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    if-eqz p2, :cond_47

    const-string p1, "amount"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastVirtualCurrency(Ljava/lang/String;)V

    const-string p1, "offline-items"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastOfflineItems([Ljava/lang/String;)V

    :cond_47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_4d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p2, v4, :cond_61

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_4d

    :cond_61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_70} :catch_75

    const/4 p1, 0x1

    return p1

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_75
    :cond_75
    return v2
.end method

.method public H0(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public I0()Ljava/lang/String;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x7f12032a

    :try_start_8
    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_fc

    const-string v2, "0"

    if-nez v1, :cond_15

    move-object v1, v2

    :cond_15
    const v3, 0x7f120395

    :try_start_18
    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x7f120399

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_35} :catch_fc

    const-string v4, "null:null"

    const-string v5, ""

    if-nez v3, :cond_41

    :try_start_3b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_41
    move-object v1, v5

    :cond_42
    const v3, 0x7f120390

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAnonymousCredential()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_5c
    move-object v1, v5

    :cond_5d
    const v3, 0x7f120397

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    goto :goto_73

    :cond_72
    move-object v2, v1

    :goto_73
    const v1, 0x7f120393

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_89

    :cond_88
    move-object v5, v1

    :goto_89
    const v1, 0x7f120394

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a8

    const v1, 0x7f12039b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a8
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v1

    if-eqz v1, :cond_be

    const v1, 0x7f12039a

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HDIDFV"

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_be
    const v1, 0x7f1203ab

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x7f12038d

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x7f12038a

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12031b

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v1, 0x7f1203a8

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_fb} :catch_fc

    return-object v0

    :catch_fc
    const/4 v0, 0x0

    return-object v0
.end method

.method public J0(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v0

    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method public K0(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object p1

    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v0

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method L0(Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x3f3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_2d
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->SetPurchaseReceipts(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->G0(Ljava/lang/String;Z)Z

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveSku(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveOrderID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveNotifyID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveDevPayload(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$i;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$i;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public M0()V
    .registers 5

    sget-boolean v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    const-string v1, ""

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    const-string v2, "inapp"

    if-eqz v0, :cond_26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->K0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v2, "subs"

    :cond_1c
    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->X:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    invoke-virtual {v0, v1, v2, v3}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V

    goto :goto_2d

    :cond_26
    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    :goto_2d
    return-void

    :cond_2e
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getGoogleDevKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_52

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    return-void

    :cond_52
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x5

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The public key is invalid."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public X()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getOrderID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_12

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    if-eqz v1, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->D0()V

    return-void
.end method

.method public b()V
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getResult()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5c

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->O:Z

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    sget-boolean v2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    if-eqz v2, :cond_1e

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getGoogleDevKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    const-string v3, ""

    if-eq v2, v3, :cond_4d

    sget-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->c()V

    :cond_2f
    const/4 v1, 0x0

    sput-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$c;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$c;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    goto :goto_5c

    :cond_4d
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The public key is invalid."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    :goto_5c
    return-void
.end method

.method public b0()V
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getOrderID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const v3, 0x7f120354

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0x7f1202da

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0x7f1202ac

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v2

    new-instance v3, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;

    invoke-direct {v3, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->b(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public d()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkHKServices()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    nop

    :goto_5
    sget v0, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    return-void

    :cond_f
    sget-boolean v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->a0:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    goto :goto_41

    :cond_1d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getGoogleDevKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v3, ""

    if-eq v0, v3, :cond_42

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$l;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$l;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    :goto_41
    return-void

    :cond_42
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The public key is invalid."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .registers 5

    invoke-super {p0}, Lcom/gameloft/android2d/iap/billings/a;->U()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->K0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_11
    :try_start_11
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkHKServices()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    nop

    :goto_16
    sget v0, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-boolean v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->S:Z

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Z:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v2, "subs"

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    goto :goto_51

    :cond_2d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getGoogleDevKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v3, ""

    if-eq v0, v3, :cond_52

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->R:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    :goto_51
    return-void

    :cond_52
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The public key is invalid."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 13

    const-string v0, "billing_methods"

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_10

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_10
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetCRMUrl()Ljava/lang/String;

    move-result-object v1

    :cond_14
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_19
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->A()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/gameloft/android2d/iap/utils/h;->G(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object v7

    if-eqz v7, :cond_a2

    const/4 v7, 0x0

    :goto_31
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_65

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "price"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/gameloft/android2d/iap/utils/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "display_price"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/gameloft/android2d/iap/utils/h;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "currency"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_65
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@currency="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_b0} :catch_b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    move-object v0, v2

    :goto_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f120333

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f12036c

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f1202b1

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12037f

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12033b

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120344

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120347

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13f

    goto :goto_143

    :cond_13f
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v2

    :goto_143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120348

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_FederationIsInitialized()Z

    move-result v0

    if-eqz v0, :cond_15f

    const-string v0, "0"

    goto :goto_161

    :cond_15f
    const-string v0, "1"

    :goto_161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120346

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120343

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getInjectedIGP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120353

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c3
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    new-instance v2, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v3, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->D()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v6, p1}, Lcom/gameloft/android2d/iap/utils/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->NounceGenerator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->p(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v2, v1, v0, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->l(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1e4
    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f6

    const-wide/16 v0, 0x32

    :try_start_1f0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f3} :catch_1f4

    goto :goto_1e4

    :catch_1f4
    nop

    goto :goto_1e4

    :cond_1f6
    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p1

    const/16 v0, -0x3e8

    const/4 v1, 0x3

    if-nez p1, :cond_21e

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPCRMKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v2, v5}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21d

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x5

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return v0

    :cond_21d
    return v4

    :cond_21e
    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p1

    const/16 v3, 0x193

    const-string v4, "code"

    if-eq p1, v3, :cond_247

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p1

    const/16 v3, 0x1ad

    if-eq p1, v3, :cond_247

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->MixIAPErrorCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return v0

    :cond_247
    invoke-virtual {v2, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnLimitRequestCallback(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationMessage(Ljava/lang/String;)V

    const-string p1, "next_transaction_time"

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationNextTransactionTime(Ljava/lang/String;)V

    const-string p1, "seconds_before_next_transaction"

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationSecondsBeforeNextTransaction(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 24

    move-object/from16 v0, p1

    move/from16 v1, p5

    const-string v2, "billing_methods"

    const-string v3, "utf-8"

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    new-instance v5, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v6, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyServer()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProxyPort()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/gameloft/android2d/iap/utils/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    if-eqz v6, :cond_2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    :cond_2d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetCRMUrl()Ljava/lang/String;

    move-result-object v6

    :cond_31
    if-nez v1, :cond_40

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getOrderID()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getDevPayload()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v11

    goto :goto_46

    :cond_40
    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v10, p4

    :goto_46
    if-nez v1, :cond_5c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5c

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5c

    const/4 v10, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v10, 0x0

    :goto_5d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f120334

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "&"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v15, 0x7f12036c

    invoke-static {v15}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v16, 0x7f1202b1

    invoke-static/range {v16 .. v16}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f12037f

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAccessToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f120344

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f12033a

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d4

    move-object v13, v0

    goto :goto_d8

    :cond_d4
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v13

    :goto_d8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v13, 0x7f120366

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120347

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_106

    move-object v9, v8

    goto :goto_10a

    :cond_106
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v9

    :goto_10a
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120348

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_FederationIsInitialized()Z

    move-result v9

    const-string v13, "0"

    const-string v16, "1"

    if-eqz v9, :cond_129

    move-object v9, v13

    goto :goto_12b

    :cond_129
    move-object/from16 v9, v16

    :goto_12b
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120346

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120339

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAnonymousCredential()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120343

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f12036a

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f12034b

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1a1

    goto :goto_1a5

    :cond_1a1
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v11

    :goto_1a5
    invoke-static {v11}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120337

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gameloft/android2d/iap/utils/Device;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120338

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v9

    invoke-virtual {v9}, Lcom/gameloft/android2d/iap/utils/Device;->i()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->EncodeUrlRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_2fe

    :try_start_1f0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v11

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v11

    invoke-virtual {v11}, Lcom/gameloft/android2d/iap/utils/g;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_207} :catch_207

    :catch_207
    :try_start_207
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v11

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v11

    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v11}, Lcom/gameloft/android2d/iap/utils/g;->A()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v11}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v11
    :try_end_224
    .catch Lorg/json/JSONException; {:try_start_207 .. :try_end_224} :catch_2b6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_207 .. :try_end_224} :catch_2b6

    move-object/from16 p3, v13

    :goto_226
    :try_start_226
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_262

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13
    :try_end_230
    .catch Lorg/json/JSONException; {:try_start_226 .. :try_end_230} :catch_2b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_226 .. :try_end_230} :catch_2b1

    move-object/from16 v17, v8

    :try_start_232
    const-string v8, "price"
    :try_end_234
    .catch Lorg/json/JSONException; {:try_start_232 .. :try_end_234} :catch_2b3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_232 .. :try_end_234} :catch_2b3

    move/from16 p4, v10

    :try_start_236
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/gameloft/android2d/iap/utils/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "display_price"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/gameloft/android2d/iap/utils/h;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "currency"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    move/from16 v10, p4

    move-object/from16 v8, v17

    goto :goto_226

    :cond_262
    move-object/from16 v17, v8

    move/from16 p4, v10

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@currency="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/gameloft/android2d/iap/utils/h;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "locale"

    invoke-virtual {v12, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2
    :try_end_2b0
    .catch Lorg/json/JSONException; {:try_start_236 .. :try_end_2b0} :catch_2bc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_236 .. :try_end_2b0} :catch_2bc

    goto :goto_2be

    :catch_2b1
    move-object/from16 v17, v8

    :catch_2b3
    move/from16 p4, v10

    goto :goto_2bc

    :catch_2b6
    move-object/from16 v17, v8

    move/from16 p4, v10

    move-object/from16 p3, v13

    :catch_2bc
    :goto_2bc
    move-object/from16 v2, v17

    :goto_2be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f12033b

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120388

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_304

    :cond_2fe
    move-object/from16 v17, v8

    move/from16 p4, v10

    move-object/from16 p3, v13

    :goto_304
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getInjectedIGP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f120353

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_32d
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->NounceGenerator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->p(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v6, v9, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->l(Ljava/lang/String;Ljava/lang/String;I)V

    const v2, 0x7f120334

    :goto_33b
    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34d

    const-wide/16 v3, 0x32

    :try_start_347
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_34a} :catch_34b

    goto :goto_33b

    :catch_34b
    nop

    goto :goto_33b

    :cond_34d
    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_442

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPCRMKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v6, v7}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_436

    :try_start_36a
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "transaction_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_379
    .catch Lorg/json/JSONException; {:try_start_36a .. :try_end_379} :catch_3a0

    :try_start_379
    const-string v4, "restore"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_384

    move-object/from16 v4, v16

    goto :goto_386

    :cond_384
    move-object/from16 v4, p3

    :goto_386
    const/16 v6, 0x3e

    invoke-static {v4, v6}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    const-string v4, "subscription"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_396

    move-object/from16 v2, v16

    goto :goto_398

    :cond_396
    move-object/from16 v2, p3

    :goto_398
    const/16 v4, 0x3f

    invoke-static {v2, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V
    :try_end_39d
    .catch Lorg/json/JSONException; {:try_start_379 .. :try_end_39d} :catch_39e

    goto :goto_3a2

    :catch_39e
    nop

    goto :goto_3a2

    :catch_3a0
    move-object/from16 v3, v17

    :goto_3a2
    if-eqz v1, :cond_3d7

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->crmRestoreInfoNCI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->crmRestoreNCI(Ljava/lang/String;)V

    const/16 v1, 0x3c

    :try_start_3b4
    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->isJSONValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_3c9

    :cond_3c4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_3c9
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V
    :try_end_3d3
    .catch Lorg/json/JSONException; {:try_start_3b4 .. :try_end_3d3} :catch_3d3

    :catch_3d3
    move-object/from16 v2, p0

    goto/16 :goto_45e

    :cond_3d7
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_403

    const/16 v4, 0x35

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3ec

    goto :goto_400

    :cond_3ec
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_400
    invoke-static {v0, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_403
    const/16 v0, 0x27

    invoke-static {v3, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    if-eqz p4, :cond_40d

    move-object/from16 v13, v16

    goto :goto_40f

    :cond_40d
    move-object/from16 v13, p3

    :goto_40f
    const/16 v0, 0x3b

    invoke-static {v13, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getResult()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->savePendingTransactionResult(Ljava/lang/String;)V

    if-nez v1, :cond_45e

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->E0()V

    goto :goto_45e

    :cond_436
    move-object/from16 v2, p0

    if-nez v1, :cond_45e

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x5

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_45e

    :cond_442
    move-object/from16 v2, p0

    if-nez v1, :cond_45e

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v5, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->MixIAPErrorCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :cond_45e
    :goto_45e
    return-void
.end method

.method public k(Z)V
    .registers 8

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public l()V
    .registers 12

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const v3, 0x7f120340

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastContentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastMoney()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUnlockCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getOrderID()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getDevPayload()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getNotifyID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_67

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_71

    :cond_67
    invoke-virtual {v1, v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_71
    invoke-virtual {v1, v6}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v7, 0x7f12033d

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getInjectedIGP()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "="

    if-nez v8, :cond_b2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f120353

    invoke-static {v10}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b2
    const-string v7, "injectedserialkey"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_dd

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f120342

    invoke-static {v10}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_dd
    const/4 v7, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_110

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120388

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :cond_110
    const/4 v0, 0x0

    :goto_111
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastVerifyURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->I0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;

    invoke-direct {v5, p0, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;Z)V

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkHKServices()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    nop

    :goto_5
    sget p1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x15

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_14
    invoke-super {p0}, Lcom/gameloft/android2d/iap/billings/a;->U()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->U:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->b:Z

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->M0()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.a (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$a)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$a;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3a

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->RequestSubscriptionStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_3a
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.b (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$b)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$b;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 p2, 0x3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x3d

    if-eqz v1, :cond_7d

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->AddNCIReceipts(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->addRestoreItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_57
    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->isJSONValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :cond_67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_6c
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    goto :goto_16

    :catch_7b
    nop

    goto :goto_16

    :cond_7d
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f1202aa

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "item_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/gameloft/android2d/iap/utils/h;->m(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->AddNCIReceipts(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/gameloft/android2d/iap/IAPLib;->addRestoreItem(Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->isJSONValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c7

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_cc

    :cond_c7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_cc
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_da} :catch_7b

    goto/16 :goto_16

    :cond_dc
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetListItemsRestoreCB()V

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.c (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$c)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$c;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$c;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-nez p1, :cond_10

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_10
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    if-nez p1, :cond_1d

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_1d
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$c;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v1, "inapp"

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.d (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$d)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void

    :cond_b
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$d;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Z:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v1, "subs"

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.e (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$e)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_12
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "inapp"

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->K0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string v0, "subs"

    :cond_3c
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v2, v2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->X:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;

    invoke-virtual {p1, v1, v0, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->h(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;)V

    goto :goto_59

    :cond_4e
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$e;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->Y:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    invoke-virtual {p1, v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    :goto_59
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.f (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$f)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->F0(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$f;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p3}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_4e

    :cond_1c
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 p3, 0x5

    const/16 v0, 0xa

    if-ne p2, p3, :cond_30

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_30
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_43

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_43
    const/4 p2, 0x3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_4e
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.g (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$g)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->F0(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$g;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_4e

    :cond_1c
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 v0, 0x5

    const/16 v1, 0xa

    if-ne p2, v0, :cond_30

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_30
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_43

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_4e

    :cond_43
    const/4 p2, 0x3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_4e
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.h (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$h)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-nez v0, :cond_ac

    if-eqz p2, :cond_ac

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_dd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()I

    move-result v3

    if-ne v3, v1, :cond_9b

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f1202aa

    const-string v5, "item_type"

    const-string v6, "content_id"

    if-nez v3, :cond_6b

    :try_start_3a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    invoke-virtual {v3, p2, v0, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V

    goto :goto_e

    :catch_69
    nop

    goto :goto_e

    :cond_6b
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    invoke-virtual {v3, p2, v0, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_99} :catch_69

    goto/16 :goto_e

    :cond_9b
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p2, -0x3f3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto/16 :goto_e

    :cond_ac
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    if-ne p2, v1, :cond_bd

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_dd

    :cond_bd
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_d3

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    new-instance p2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;

    invoke-direct {p2, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;)V

    const-string v0, "inapp"

    invoke-virtual {p1, v0, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    goto :goto_dd

    :cond_d3
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :cond_dd
    :goto_dd
    return-void
.end method

.method public b(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.h.a (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$h$a)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-nez v0, :cond_37

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$100(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$h;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v0, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_a

    :cond_37
    const/4 p2, 0x3

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :cond_42
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.i (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$i)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$i;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->L0(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$i;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$302(I)I

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$i;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->k(Z)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.j (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$j)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "GoogleBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const-string v0, "a4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_21

    :cond_f
    const-string v0, "a6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_21
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.j.a (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$j$a)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j$a;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$j;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->b0()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.k (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$k)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "GoogleBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iput-boolean p2, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a:Z

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_b3

    const-string v0, "a4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    const-string v4, "FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    const/16 v2, 0x27

    :try_start_31
    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getSku()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/16 v1, 0x35

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5d

    goto :goto_71

    :cond_5d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_74
    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a:Z

    if-eqz v0, :cond_7b

    const-string v0, "1"

    goto :goto_7d

    :cond_7b
    const-string v0, "0"

    :goto_7d
    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_85} :catch_d3

    return-void

    :cond_86
    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$300()I

    move-result p1

    if-lez p1, :cond_9d

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$310()I

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    :cond_9d
    const-string p1, ""

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveOrderID(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveNotifyID(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveDevPayload(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->savePendingTransactionResult(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x5

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_d3

    :cond_b3
    const-string v0, "a6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result p1

    if-eqz p1, :cond_cc

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;-><init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_d3

    :cond_cc
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :catch_d3
    :cond_d3
    :goto_d3
    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.k.a (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$k$a)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$a;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->l()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.k.b (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$k$b)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k$b;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$k;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->l()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.l (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$l)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$l;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$l;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->b()I

    move-result p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_12
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$002(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$l;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->a0:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;

    const-string v1, "inapp"

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->j(Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling.m (com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling$m)
.class Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;
.super Ljava/lang/Object;
.source "GoogleBilling.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-nez p1, :cond_b4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->H0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->J0(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f1202aa

    const-string v5, "item_type"

    const-string v6, "content_id"

    if-nez v3, :cond_6b

    :try_start_3a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->V:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;

    invoke-virtual {v3, p2, v2, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->b(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$g;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_68} :catch_69

    goto :goto_d

    :catch_69
    nop

    goto :goto_d

    :cond_6b
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->h()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "acknowledged"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->EncryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->access$200()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling$m;->a:Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    iget-object v4, v4, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->W:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;

    invoke-virtual {v3, p2, v2, v4}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->a(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$f;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_ab} :catch_69

    goto/16 :goto_d

    :cond_ad
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_ba

    :cond_b4
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_ba
    return-void
.end method
