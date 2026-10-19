###### Class kotlinx.serialization.json.internal.Composer (kotlinx.serialization.json.internal.j)
.class public Lkotlinx/serialization/json/internal/j;
.super Ljava/lang/Object;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0012J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0013H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0014H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0015H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0016H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0017H\u0016J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0018J\u0008\u0010\u001b\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\rH\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/Composer;",
        "",
        "writer",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "(Lkotlinx/serialization/json/internal/JsonWriter;)V",
        "<set-?>",
        "",
        "writingFirst",
        "getWritingFirst",
        "()Z",
        "setWritingFirst",
        "(Z)V",
        "indent",
        "",
        "nextItem",
        "print",
        "v",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "printQuoted",
        "value",
        "space",
        "unIndent",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/json/internal/l0;

.field private b:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/l0;)V
    .registers 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    return-void
.end method

.method public d(B)V
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/l0;->writeLong(J)V

    return-void
.end method

.method public final e(C)V
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->a(C)V

    return-void
.end method

.method public f(D)V
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public g(F)V
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h(I)V
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/l0;->writeLong(J)V

    return-void
.end method

.method public i(J)V
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/l0;->writeLong(J)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public k(S)V
    .registers 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/l0;->writeLong(J)V

    return-void
.end method

.method public l(Z)V
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/l0;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final n(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/j;->b:Z

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()V
    .registers 1

    return-void
.end method
