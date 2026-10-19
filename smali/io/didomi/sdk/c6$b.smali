###### Class io.didomi.drawable.C1733c6.b (io.didomi.sdk.c6$b)
.class final Lio/didomi/sdk/c6$b;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.user.sync.SyncRepository"
    f = "SyncRepository.kt"
    i = {
        0x0
    }
    l = {
        0xae
    }
    m = "doSync$android_release"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/didomi/sdk/c6;

.field d:I


# direct methods
.method constructor <init>(Lio/didomi/sdk/c6;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/c6;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/c6$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/c6$b;->c:Lio/didomi/sdk/c6;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/c6$b;->b:Ljava/lang/Object;

    iget p1, p0, Lio/didomi/sdk/c6$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/didomi/sdk/c6$b;->d:I

    iget-object p1, p0, Lio/didomi/sdk/c6$b;->c:Lio/didomi/sdk/c6;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
