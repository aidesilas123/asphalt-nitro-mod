###### Class com.mbridge.msdk.foundation.tools.c.f (com.mbridge.msdk.foundation.tools.c$f)
.class final Lcom/mbridge/msdk/foundation/tools/c$f;
.super Lcom/mbridge/msdk/foundation/tools/c$b;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/tools/c$b;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/c$b;->a:I

    iput p2, p0, Lcom/mbridge/msdk/foundation/tools/c$f;->b:I

    return-void
.end method


# virtual methods
.method final a()B
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
