###### Class com.gameloft.glads.AndroidWebView.f.a (com.gameloft.glads.AndroidWebView$f$a)
.class Lcom/gameloft/glads/AndroidWebView$f$a;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView$f;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView$f;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$f$a;->a:Lcom/gameloft/glads/AndroidWebView$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$f$a;->a:Lcom/gameloft/glads/AndroidWebView$f;

    iget-object v0, v0, Lcom/gameloft/glads/AndroidWebView$f;->g:Lcom/gameloft/glads/AndroidWebView;

    iget-wide v0, v0, Lcom/gameloft/glads/AndroidWebView;->parent:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/gameloft/glads/AndroidWebView;->NativeButtonClicked(JI)V

    return-void
.end method
