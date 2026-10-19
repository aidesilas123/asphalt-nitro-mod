###### Class com.gameloft.android2d.iap.IAPLib.r.d (com.gameloft.android2d.iap.IAPLib$r$d)
.class Lcom/gameloft/android2d/iap/IAPLib$r$d;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$d;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    sget-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    if-nez p1, :cond_62

    const/4 p1, 0x1

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->w()I

    move-result p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014a

    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_53

    const p1, 0x7f120147

    invoke-static {p1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/h;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetTermsAndConditions()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void
.end method
