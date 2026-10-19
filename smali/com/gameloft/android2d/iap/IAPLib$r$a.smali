###### Class com.gameloft.android2d.iap.IAPLib.r.a (com.gameloft.android2d.iap.IAPLib$r$a)
.class Lcom/gameloft/android2d/iap/IAPLib$r$a;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->b:Lcom/gameloft/android2d/iap/IAPLib$r;

    iput-boolean p2, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->a:Z

    if-eqz p1, :cond_8d

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

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0a000d

    if-ne v1, v2, :cond_60

    const v1, 0x7f12030d

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    goto :goto_8d

    :cond_60
    const v2, 0x7f0a000e

    if-ne v1, v2, :cond_77

    const v1, 0x7f12030f

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    goto :goto_8d

    :cond_77
    const v2, 0x7f0a000f

    if-ne v1, v2, :cond_8d

    const v1, 0x7f12030c

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->b:Lcom/gameloft/android2d/iap/IAPLib$r;

    iget-wide v1, v1, Lcom/gameloft/android2d/iap/IAPLib$r;->d:J

    invoke-static {p1, v0, v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
