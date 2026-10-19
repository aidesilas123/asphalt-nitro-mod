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
