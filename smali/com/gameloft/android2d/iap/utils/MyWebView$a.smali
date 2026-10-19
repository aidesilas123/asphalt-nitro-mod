###### Class com.gameloft.android2d.iap.utils.MyWebView.a (com.gameloft.android2d.iap.utils.MyWebView$a)
.class Lcom/gameloft/android2d/iap/utils/MyWebView$a;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/MyWebView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/MyWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/MyWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    const v1, 0x7f0a0506

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$002(Lcom/gameloft/android2d/iap/utils/MyWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$000(Lcom/gameloft/android2d/iap/utils/MyWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202fe

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "&error="

    const/4 v4, 0x1

    if-eqz v1, :cond_90

    if-eqz v0, :cond_16b

    const v1, 0x7f1203bd

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_46

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_16b

    :cond_46
    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$200(Lcom/gameloft/android2d/iap/utils/MyWebView;)Z

    move-result v3

    if-nez v3, :cond_16b

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$202(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_79

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$300()Ljava/util/HashMap;

    move-result-object v0

    const v1, 0x7f1203ac

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->l()V

    goto :goto_89

    :cond_79
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$400(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_89
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    goto/16 :goto_16b

    :cond_90
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$000(Lcom/gameloft/android2d/iap/utils/MyWebView;)Landroid/webkit/WebView;

    move-result-object v1

    const v5, 0x7f1203bc

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    const-string v5, "&id="

    const v6, 0x7f1203be

    if-nez v1, :cond_d1

    if-eqz v0, :cond_16b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_d1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_d1

    const-string v1, "?error="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_16b

    :cond_d1
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$200(Lcom/gameloft/android2d/iap/utils/MyWebView;)Z

    move-result v1

    if-nez v1, :cond_16b

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v1, v4}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$202(Lcom/gameloft/android2d/iap/utils/MyWebView;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_119

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$600(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$700(Lcom/gameloft/android2d/iap/utils/MyWebView;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;-><init>(Lcom/gameloft/android2d/iap/utils/MyWebView$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_166

    :cond_119
    const v1, 0x7f1203ba

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_15f

    const v1, 0x7f1203bb

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_15f

    const v1, 0x7f1203bf

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_141

    goto :goto_15f

    :cond_141
    const-string v1, "error=E00007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_157

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 v0, -0x64

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    goto :goto_166

    :cond_157
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x5

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_166

    :cond_15f
    :goto_15f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$300()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->CheckWPLimitation(Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_166
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$500(Lcom/gameloft/android2d/iap/utils/MyWebView;)V

    :cond_16b
    :goto_16b
    return-void
.end method
