###### Class com.android.billingclient.api.zzg (com.android.billingclient.api.zzg)
.class final Lcom/android/billingclient/api/zzg;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field private final a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final b:Lcom/android/billingclient/api/zzaz;

.field private final c:Lcom/android/billingclient/api/AlternativeBillingListener;

.field private final d:Lcom/android/billingclient/api/zzar;

.field private e:Z

.field final synthetic f:Lcom/android/billingclient/api/zzh;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .registers 6

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->f:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p4, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->c:Lcom/android/billingclient/api/AlternativeBillingListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->b:Lcom/android/billingclient/api/zzaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/zzaz;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .registers 5

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->f:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->c:Lcom/android/billingclient/api/AlternativeBillingListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->b:Lcom/android/billingclient/api/zzaz;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/zzaz;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->b:Lcom/android/billingclient/api/zzaz;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method private final d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .registers 6

    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_8
    iget-object p2, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza()Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzx([BLcom/google/android/gms/internal/play_billing/zzbn;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    const/16 v0, 0x17

    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzg;->e:Z

    if-nez v0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->f:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->a(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->f:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->a(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzg;->e:Z

    :cond_21
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "BillingBroadcastManager"

    if-nez p1, :cond_24

    const-string p1, "Bundle is null."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0xb

    sget-object v1, Lcom/android/billingclient/api/zzat;->j:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p2, v0, v1}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz p1, :cond_23

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_23
    return-void

    :cond_24
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzd(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "INTENT_SOURCE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LAUNCH_BILLING_FLOW"

    const/4 v5, 0x2

    if-eq v3, v4, :cond_41

    if-eqz v3, :cond_40

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    const/4 v5, 0x1

    :cond_41
    :goto_41
    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzh(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result v0

    if-nez v0, :cond_5d

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    invoke-static {v5}, Lcom/android/billingclient/api/zzaq;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzar;->c(Lcom/google/android/gms/internal/play_billing/zzff;)V

    goto :goto_60

    :cond_5d
    invoke-direct {p0, p1, v2, v5}, Lcom/android/billingclient/api/zzg;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    :goto_60
    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_66
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fd

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p2

    if-eqz p2, :cond_81

    invoke-direct {p0, p1, v2, v5}, Lcom/android/billingclient/api/zzg;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_81
    iget-object p2, p0, Lcom/android/billingclient/api/zzg;->c:Lcom/android/billingclient/api/AlternativeBillingListener;

    if-nez p2, :cond_a1

    const-string p1, "AlternativeBillingListener is null."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0xf

    sget-object v0, Lcom/android/billingclient/api/zzat;->j:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_a1
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c5

    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0x10

    sget-object v0, Lcom/android/billingclient/api/zzat;->j:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_c5
    :try_start_c5
    new-instance p2, Lcom/android/billingclient/api/AlternativeChoiceDetails;

    invoke-direct {p2, p1}, Lcom/android/billingclient/api/AlternativeChoiceDetails;-><init>(Ljava/lang/String;)V
    :try_end_ca
    .catch Lorg/json/JSONException; {:try_start_c5 .. :try_end_ca} :catch_d9

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    invoke-static {v5}, Lcom/android/billingclient/api/zzaq;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzar;->c(Lcom/google/android/gms/internal/play_billing/zzff;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->c:Lcom/android/billingclient/api/AlternativeBillingListener;

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingListener;->a(Lcom/android/billingclient/api/AlternativeChoiceDetails;)V

    return-void

    :catch_d9
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Error when parsing invalid alternative choice data: [%s]"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->d:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0x11

    sget-object v0, Lcom/android/billingclient/api/zzat;->j:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->b(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->a:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_fd
    return-void
.end method
