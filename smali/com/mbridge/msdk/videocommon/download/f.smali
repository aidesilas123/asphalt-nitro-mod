###### Class com.mbridge.msdk.videocommon.download.f (com.mbridge.msdk.videocommon.download.f)
.class public final Lcom/mbridge/msdk/videocommon/download/f;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/videocommon/download/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/same/e/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/mbridge/msdk/foundation/same/e/b;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/videocommon/download/f;->a:Lcom/mbridge/msdk/foundation/same/e/b;

    :cond_1c
    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/videocommon/download/f$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/videocommon/download/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/foundation/same/e/a;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/videocommon/download/f;->a:Lcom/mbridge/msdk/foundation/same/e/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/e/b;->a(Lcom/mbridge/msdk/foundation/same/e/a;)V

    :cond_7
    return-void
.end method

###### Class com.mbridge.msdk.videocommon.download.f.AnonymousClass1 (com.mbridge.msdk.videocommon.download.f$1)
.class final synthetic Lcom/mbridge/msdk/videocommon/download/f$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.videocommon.download.f.a (com.mbridge.msdk.videocommon.download.f$a)
.class final Lcom/mbridge/msdk/videocommon/download/f$a;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/mbridge/msdk/videocommon/download/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/videocommon/download/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/videocommon/download/f;-><init>(Lcom/mbridge/msdk/videocommon/download/f$1;)V

    sput-object v0, Lcom/mbridge/msdk/videocommon/download/f$a;->a:Lcom/mbridge/msdk/videocommon/download/f;

    return-void
.end method
