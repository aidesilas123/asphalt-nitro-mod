###### Class com.mbridge.msdk.video.bt.a.a (com.mbridge.msdk.video.bt.a.a)
.class public final Lcom/mbridge/msdk/video/bt/a/a;
.super Ljava/lang/Object;
.source "H5MediaPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.mbridge.msdk.video.bt.a.a.C0427a (com.mbridge.msdk.video.bt.a.a$a)
.class final Lcom/mbridge/msdk/video/bt/a/a$a;
.super Ljava/lang/Object;
.source "H5MediaPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/video/bt/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/video/bt/a/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/bt/a/a;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/video/bt/a/a$a;->a:Lcom/mbridge/msdk/video/bt/a/a;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/video/bt/a/a;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/video/bt/a/a$a;->a:Lcom/mbridge/msdk/video/bt/a/a;

    return-object v0
.end method
