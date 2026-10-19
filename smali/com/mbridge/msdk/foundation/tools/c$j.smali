###### Class com.mbridge.msdk.foundation.tools.c.j (com.mbridge.msdk.foundation.tools.c$j)
.class abstract Lcom/mbridge/msdk/foundation/tools/c$j;
.super Lcom/mbridge/msdk/foundation/tools/c$b;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/tools/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "j"
.end annotation


# instance fields
.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:Z


# direct methods
.method constructor <init>(IILjava/lang/Object;IZ)V
    .registers 6

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/tools/c$b;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/c$j;->c:I

    iput p2, p0, Lcom/mbridge/msdk/foundation/tools/c$b;->a:I

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/tools/c$j;->b:Ljava/lang/Object;

    iput p4, p0, Lcom/mbridge/msdk/foundation/tools/c$j;->d:I

    iput-boolean p5, p0, Lcom/mbridge/msdk/foundation/tools/c$j;->e:Z

    return-void
.end method
