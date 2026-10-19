###### Class com.android.billingclient.api.zzbk (com.android.billingclient.api.zzbk)
.class final Lcom/android/billingclient/api/zzbk;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field private final a:Lcom/android/billingclient/api/BillingResult;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingResult;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbk;->a:Lcom/android/billingclient/api/BillingResult;

    iput p2, p0, Lcom/android/billingclient/api/zzbk;->b:I

    return-void
.end method


# virtual methods
.method final a()Lcom/android/billingclient/api/BillingResult;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzbk;->a:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/zzbk;->b:I

    return v0
.end method
