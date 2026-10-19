###### Class com.android.billingclient.api.zzbj (com.android.billingclient.api.zzbj)
.class public final Lcom/android/billingclient/api/zzbj;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzbj;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbj;->b:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/BillingResult;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzbj;->b:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/zzbj;->a:Ljava/util/List;

    return-object v0
.end method
