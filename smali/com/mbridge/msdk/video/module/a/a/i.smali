###### Class com.mbridge.msdk.video.module.a.a.i (com.mbridge.msdk.video.module.a.a.i)
.class public Lcom/mbridge/msdk/video/module/a/a/i;
.super Lcom/mbridge/msdk/video/module/a/a/f;
.source "ProxyOnNotifyListener.java"


# instance fields
.field protected b:Lcom/mbridge/msdk/video/module/a/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/a/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/a/a/f;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/a/a/i;->b:Lcom/mbridge/msdk/video/module/a/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/i;->b:Lcom/mbridge/msdk/video/module/a/a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_a
    return-void
.end method
