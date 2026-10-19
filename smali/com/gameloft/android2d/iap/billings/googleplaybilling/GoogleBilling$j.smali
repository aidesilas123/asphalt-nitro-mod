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
