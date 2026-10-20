###### Class com.mbridge.msdk.foundation.tools.FastKV.c (com.mbridge.msdk.foundation.tools.FastKV$c)
.class final Lcom/mbridge/msdk/foundation/tools/FastKV$c;
.super Ljava/lang/Object;
.source "FastKV.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/tools/FastKV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mbridge/msdk/foundation/tools/FastKV$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/tools/FastKV$c;->a:I

    iput p2, p0, Lcom/mbridge/msdk/foundation/tools/FastKV$c;->b:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/mbridge/msdk/foundation/tools/FastKV$c;

    iget v0, p0, Lcom/mbridge/msdk/foundation/tools/FastKV$c;->a:I

    iget p1, p1, Lcom/mbridge/msdk/foundation/tools/FastKV$c;->a:I

    sub-int/2addr v0, p1

    return v0
.end method
