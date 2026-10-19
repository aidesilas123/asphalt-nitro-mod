###### Class com.gameloft.glads.a.C0217a (com.gameloft.glads.a$a)
.class Lcom/gameloft/glads/a$a;
.super Landroid/webkit/WebViewClient;
.source "GLWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/a;->a(Landroid/webkit/WebView;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/gameloft/glads/a;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/a;J)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/glads/a$a;->b:Lcom/gameloft/glads/a;

    iput-wide p2, p0, Lcom/gameloft/glads/a$a;->a:J

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object p3, p0, Lcom/gameloft/glads/a$a;->b:Lcom/gameloft/glads/a;

    iget-object p3, p3, Lcom/gameloft/glads/a;->a:Lcom/gameloft/glads/AndroidWebView;

    iget-wide v0, p0, Lcom/gameloft/glads/a$a;->a:J

    invoke-virtual {p3, v0, v1, p2}, Lcom/gameloft/glads/AndroidWebView;->OnCreateWindow(JLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
