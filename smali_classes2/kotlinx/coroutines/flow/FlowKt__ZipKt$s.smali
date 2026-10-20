###### Class kotlinx.coroutines.flow.FlowKt__ZipKt.s (kotlinx.coroutines.flow.FlowKt__ZipKt$s)
.class final Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;
.super Lkotlin/jvm/internal/t;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ZipKt;->a()Lkotlin/jvm/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;->a:Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$s;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
