###### Class kotlinx.serialization.json.internal.ComposerForUnsignedNumbers (kotlinx.serialization.json.internal.q)
.class public final Lkotlinx/serialization/json/internal/q;
.super Lkotlinx/serialization/json/internal/j;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\n\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000cH\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;",
        "Lkotlinx/serialization/json/internal/Composer;",
        "writer",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "forceQuoting",
        "",
        "(Lkotlinx/serialization/json/internal/JsonWriter;Z)V",
        "print",
        "",
        "v",
        "",
        "",
        "",
        "",
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
.field private final c:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/l0;Z)V
    .registers 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/j;-><init>(Lkotlinx/serialization/json/internal/l0;)V

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    return-void
.end method


# virtual methods
.method public d(B)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method public h(I)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    if-eqz v0, :cond_10

    invoke-static {p1}, Lkotlinx/serialization/json/internal/l;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_17

    :cond_10
    invoke-static {p1}, Lkotlinx/serialization/json/internal/k;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public i(J)V
    .registers 4

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    if-eqz v0, :cond_10

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/n;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_17

    :cond_10
    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/m;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public k(S)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q;->c:Z

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-static {p1}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    :goto_13
    return-void
.end method
