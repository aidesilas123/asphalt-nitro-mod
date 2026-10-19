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
