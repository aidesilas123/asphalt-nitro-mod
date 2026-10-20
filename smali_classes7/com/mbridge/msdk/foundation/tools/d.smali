###### Class com.mbridge.msdk.foundation.tools.d (com.mbridge.msdk.foundation.tools.d)
.class public final Lcom/mbridge/msdk/foundation/tools/d;
.super Ljava/lang/Object;
.source "CrashInfoAuthor.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->a:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->a:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/tools/d;->b:Z

    return v0
.end method
