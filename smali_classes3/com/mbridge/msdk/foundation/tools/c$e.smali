###### Class com.mbridge.msdk.foundation.tools.c.e (com.mbridge.msdk.foundation.tools.c$e)
.class final Lcom/mbridge/msdk/foundation/tools/c$e;
.super Lcom/mbridge/msdk/foundation/tools/c$b;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field b:F


# direct methods
.method constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/tools/c$b;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/c$b;->a:I

    iput p2, p0, Lcom/mbridge/msdk/foundation/tools/c$e;->b:F

    return-void
.end method


# virtual methods
.method final a()B
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
