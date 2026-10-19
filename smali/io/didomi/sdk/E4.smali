###### Class io.didomi.drawable.C1751e4 (io.didomi.sdk.e4)
.class public final Lio/didomi/sdk/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/e4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000c\u0018\u0000 92\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u000c\u001a\u0004\u0018\u00010\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0006\u0010\u000bR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000bR\u001b\u0010\u0014\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0017\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\n\u001a\u0004\u0008\u0016\u0010\u0013R\u001b\u0010\u001a\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0019\u0010\u0013R\u001b\u0010\u001d\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\n\u001a\u0004\u0008\u001c\u0010\u0013R\u001b\u0010\u001e\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\n\u001a\u0004\u0008\r\u0010\u0013R\u001b\u0010\u001f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\n\u001a\u0004\u0008\u0011\u0010\u0013R\u001b\u0010!\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008 \u0010\u0013R\u001b\u0010#\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\n\u001a\u0004\u0008\"\u0010\u0013R\u001b\u0010&\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\n\u001a\u0004\u0008%\u0010\u0013R\u001b\u0010*\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\n\u001a\u0004\u0008\t\u0010)R\u001b\u0010-\u001a\u00020+8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\n\u001a\u0004\u0008\u0015\u0010,R\u001b\u00100\u001a\u00020.8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\n\u001a\u0004\u0008\u0018\u0010/R\u001d\u00102\u001a\u0004\u0018\u00010\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\n\u001a\u0004\u0008\u001b\u0010\u000bR\u001b\u00104\u001a\u00020\'8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\n\u001a\u0004\u0008$\u0010)R\u001d\u00105\u001a\u0004\u0018\u00010\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008(\u0010\u000bR\u001b\u00106\u001a\u00020+8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\n\u001a\u0004\u00081\u0010,R\u001b\u00108\u001a\u00020.8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\n\u001a\u0004\u00083\u0010/\u00a8\u0006:"
    }
    d2 = {
        "Lio/didomi/sdk/e4;",
        "",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/z8;)V",
        "a",
        "Lio/didomi/sdk/z8;",
        "Landroid/graphics/Typeface;",
        "b",
        "Lkotlin/Lazy;",
        "()Landroid/graphics/Typeface;",
        "buttonTypeface",
        "c",
        "r",
        "titleTypeface",
        "Lio/didomi/sdk/w8;",
        "d",
        "j",
        "()Lio/didomi/sdk/w8;",
        "primaryButtonTheme",
        "e",
        "k",
        "secondaryButtonTheme",
        "f",
        "i",
        "noneButtonTheme",
        "g",
        "h",
        "linkButtonTheme",
        "descriptionPrimaryTextTheme",
        "descriptionSecondaryTextTheme",
        "n",
        "titlePrimaryTextTheme",
        "o",
        "titleSecondaryTextTheme",
        "l",
        "s",
        "vendorCountButtonTheme",
        "Lio/didomi/sdk/k$i$c$a;",
        "m",
        "()Lio/didomi/sdk/k$i$c$a;",
        "descriptionAlignment",
        "",
        "()I",
        "descriptionTextColor",
        "",
        "()F",
        "descriptionTextSize",
        "p",
        "descriptionTypeface",
        "q",
        "titleAlignment",
        "titleFontFamily",
        "titleTextColor",
        "t",
        "titleTextSize",
        "u",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final u:Lio/didomi/sdk/e4$a;


# instance fields
.field private final a:Lio/didomi/sdk/z8;

.field private final b:Lkotlin/i;

.field private final c:Lkotlin/i;

.field private final d:Lkotlin/i;

.field private final e:Lkotlin/i;

.field private final f:Lkotlin/i;

.field private final g:Lkotlin/i;

.field private final h:Lkotlin/i;

.field private final i:Lkotlin/i;

.field private final j:Lkotlin/i;

.field private final k:Lkotlin/i;

.field private final l:Lkotlin/i;

.field private final m:Lkotlin/i;

.field private final n:Lkotlin/i;

.field private final o:Lkotlin/i;

.field private final p:Lkotlin/i;

.field private final q:Lkotlin/i;

.field private final r:Lkotlin/i;

.field private final s:Lkotlin/i;

.field private final t:Lkotlin/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/e4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/e4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/e4;->u:Lio/didomi/sdk/e4$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/z8;)V
    .registers 3

    const-string v0, "themeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/e4;->a:Lio/didomi/sdk/z8;

    new-instance p1, Lio/didomi/sdk/e4$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$b;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->b:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$s;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$s;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->c:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$k;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$k;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->d:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$l;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$l;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->e:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$j;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$j;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->f:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$i;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$i;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->g:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$d;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->h:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$e;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$e;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->i:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$o;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$o;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->j:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$p;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$p;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->k:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$t;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$t;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->l:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$c;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->m:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$f;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$f;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->n:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$g;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$g;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->o:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$h;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$h;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->p:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$m;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$m;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->q:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$n;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$n;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->r:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$q;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$q;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->s:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/e4$r;

    invoke-direct {p1, p0}, Lio/didomi/sdk/e4$r;-><init>(Lio/didomi/sdk/e4;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/e4;->t:Lkotlin/i;

    return-void
.end method

.method private final a()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->b:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/e4;)Landroid/graphics/Typeface;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/e4;->a()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/e4;->a:Lio/didomi/sdk/z8;

    return-object p0
.end method

.method public static final synthetic c(Lio/didomi/sdk/e4;)Landroid/graphics/Typeface;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/e4;->r()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private final r()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public final b()Lio/didomi/sdk/k$i$c$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$i$c$a;

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final g()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->p:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final h()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final i()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->f:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final j()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final k()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->e:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final l()Lio/didomi/sdk/k$i$c$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->q:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$i$c$a;

    return-object v0
.end method

.method public final m()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->r:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final n()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final o()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->k:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method

.method public final p()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->s:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final q()F
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->t:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final s()Lio/didomi/sdk/w8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/e4;->l:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/w8;

    return-object v0
.end method
