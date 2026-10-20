###### Class kotlinx.coroutines.flow.internal.b (kotlinx.coroutines.flow.internal.b)
.class public final Lkotlinx/coroutines/flow/internal/b;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\" \u0010\u0000\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "EMPTY_RESUMES",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "[Lkotlin/coroutines/Continuation;",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:[Lkotlin/coroutines/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/coroutines/d;

    sput-object v0, Lkotlinx/coroutines/flow/internal/b;->a:[Lkotlin/coroutines/d;

    return-void
.end method
