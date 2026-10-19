###### Class io.didomi.drawable.C1955y8 (io.didomi.sdk.y8)
.class public final Lio/didomi/sdk/y8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/y8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0019\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\n\u001a%\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroid/widget/TextView;",
        "Lio/didomi/sdk/L0;",
        "type",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "",
        "a",
        "(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/w8;",
        "theme",
        "(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V",
        "Lio/didomi/sdk/k$i$c$a;",
        "alignment",
        "Landroid/graphics/Typeface;",
        "fontFamily",
        "(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private static final a(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3

    const-string v0, "$this_applyTheme"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lio/didomi/sdk/L0;Lio/didomi/sdk/z8;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/y8$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_11e

    goto/16 :goto_11c

    :pswitch_1c
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11c

    :pswitch_25
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->j()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11c

    :pswitch_2e
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->l()Lio/didomi/sdk/k$i$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/e4;->m()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->p()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->q()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->m()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_11c

    :pswitch_64
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->b()Lio/didomi/sdk/k$i$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/e4;->g()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->f()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/e4;->g()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->v()Z

    move-result p1

    if-eqz p1, :cond_11c

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto :goto_11c

    :pswitch_a6
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->j()Lio/didomi/sdk/k$i$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/M3;->k()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->m()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->k()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_11c

    :pswitch_db
    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->b()Lio/didomi/sdk/k$i$c$a;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/M3;->c()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->e()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->h()Lio/didomi/sdk/M3;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/M3;->c()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->v()Z

    move-result p1

    if-eqz p1, :cond_11c

    invoke-virtual {p2}, Lio/didomi/sdk/z8;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_11c
    :goto_11c
    return-void

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_db
        :pswitch_a6
        :pswitch_64
        :pswitch_2e
        :pswitch_25
        :pswitch_1c
    .end packed-switch
.end method

.method private static final a(Landroid/widget/TextView;Lio/didomi/sdk/k$i$c$a;Landroid/graphics/Typeface;)V
    .registers 4

    invoke-virtual {p1}, Lio/didomi/sdk/k$i$c$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v0, Lio/didomi/sdk/k$i$c$a;->g:Lio/didomi/sdk/k$i$c$a;

    if-ne p1, v0, :cond_13

    if-eqz p2, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p0, p1}, Lio/didomi/sdk/x8;->b(Landroid/widget/TextView;Z)V

    :cond_13
    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/w8;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lio/didomi/sdk/ag;

    invoke-direct {v1, p0, v0}, Lio/didomi/sdk/ag;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_18
    invoke-virtual {p1}, Lio/didomi/sdk/w8;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lio/didomi/sdk/w8;->c()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_28
    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method

###### Class io.didomi.drawable.C1955y8.a (io.didomi.sdk.y8$a)
.class public final synthetic Lio/didomi/sdk/y8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/L0;->values()[Lio/didomi/sdk/L0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/L0;->a:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/L0;->b:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/L0;->c:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/didomi/sdk/L0;->d:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/didomi/sdk/L0;->e:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/didomi/sdk/L0;->f:Lio/didomi/sdk/L0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    sput-object v0, Lio/didomi/sdk/y8$a;->a:[I

    return-void
.end method

###### Class io.didomi.drawable.ag (io.didomi.sdk.ag)
.class public final synthetic Lio/didomi/sdk/ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ag;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lio/didomi/sdk/ag;->b:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ag;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lio/didomi/sdk/ag;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->b(Landroid/widget/TextView;Landroid/graphics/drawable/GradientDrawable;)V

    return-void
.end method
