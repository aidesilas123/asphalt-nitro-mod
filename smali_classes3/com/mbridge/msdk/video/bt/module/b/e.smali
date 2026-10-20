###### Class com.mbridge.msdk.video.bt.module.b.e (com.mbridge.msdk.video.bt.module.b.e)
.class public final Lcom/mbridge/msdk/video/bt/module/b/e;
.super Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;
.source "ReportBTContainerErrorListener.java"


# instance fields
.field private a:Lcom/mbridge/msdk/video/bt/module/b/h;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/bt/module/b/h;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/b/e;->a:Lcom/mbridge/msdk/video/bt/module/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$a$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/b/e;->a:Lcom/mbridge/msdk/video/bt/module/b/h;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/bt/module/b/h;->a(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
