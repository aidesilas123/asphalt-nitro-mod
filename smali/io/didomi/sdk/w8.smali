###### Class io.didomi.drawable.TextTheme (io.didomi.sdk.w8)
.class public final Lio/didomi/sdk/w8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ2\u0010\n\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\n\u0010\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0017\u0010\u0010R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0019\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/didomi/sdk/w8;",
        "",
        "Landroid/graphics/drawable/GradientDrawable;",
        "background",
        "",
        "textColor",
        "Landroid/graphics/Typeface;",
        "typeface",
        "<init>",
        "(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)V",
        "a",
        "(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)Lio/didomi/sdk/w8;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Landroid/graphics/drawable/GradientDrawable;",
        "()Landroid/graphics/drawable/GradientDrawable;",
        "b",
        "I",
        "c",
        "Landroid/graphics/Typeface;",
        "()Landroid/graphics/Typeface;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/GradientDrawable;

.field private final b:I

.field private final c:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)V
    .registers 4
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    iput p2, p0, Lio/didomi/sdk/w8;->b:I

    iput-object p3, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;ILkotlin/jvm/internal/n;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/w8;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/w8;Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;ILjava/lang/Object;)Lio/didomi/sdk/w8;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lio/didomi/sdk/w8;->b:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/w8;->a(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)Lio/didomi/sdk/w8;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)Lio/didomi/sdk/w8;
    .registers 5
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Lio/didomi/sdk/w8;

    invoke-direct {v0, p1, p2, p3}, Lio/didomi/sdk/w8;-><init>(Landroid/graphics/drawable/GradientDrawable;ILandroid/graphics/Typeface;)V

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/w8;->b:I

    return v0
.end method

.method public final c()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/w8;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/w8;

    iget-object v1, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p1, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/didomi/sdk/w8;->b:I

    iget v3, p1, Lio/didomi/sdk/w8;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    iget-object p1, p1, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lio/didomi/sdk/w8;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    if-nez v2, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v2}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextTheme(background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/w8;->a:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/didomi/sdk/w8;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/w8;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
