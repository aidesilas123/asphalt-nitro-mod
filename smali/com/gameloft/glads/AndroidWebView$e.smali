###### Class com.gameloft.glads.AndroidWebView.e (com.gameloft.glads.AndroidWebView$e)
.class Lcom/gameloft/glads/AndroidWebView$e;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/AndroidWebView;->DismissFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/glads/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/AndroidWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/glads/AndroidWebView$e;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/AndroidWebView$e;->a:Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->CloseFullScreen()V

    return-void
.end method
