###### Class com.gameloft.igp.IGPFreemiumActivity.i.a (com.gameloft.igp.IGPFreemiumActivity$i$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$i;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$i;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$i;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1800(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;

    invoke-direct {v2, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method
