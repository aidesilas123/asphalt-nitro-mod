###### Class io.didomi.drawable.C1965z8 (io.didomi.sdk.z8)
.class public final Lio/didomi/sdk/z8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/z8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 I2\u00020\u0001:\u0001\rB\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001b\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u001aR\u001b\u0010\u001e\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010!\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0014\u001a\u0004\u0008 \u0010\u001dR\u001b\u0010$\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0014\u001a\u0004\u0008#\u0010\u001dR\u001b\u0010\u000b\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0014\u001a\u0004\u0008\r\u0010\u001dR\u001b\u0010(\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008\'\u0010\u001dR\u001b\u0010+\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u0014\u001a\u0004\u0008*\u0010\u001dR\u001b\u0010-\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u0014\u001a\u0004\u0008,\u0010\u001dR\u001b\u00100\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0014\u001a\u0004\u0008/\u0010\u001dR\u001b\u00101\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008%\u0010\u001dR\u001b\u00103\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0014\u001a\u0004\u0008\"\u0010\u001dR\u001b\u00105\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0014\u001a\u0004\u0008\u0019\u00104R\u001b\u00107\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u0014\u001a\u0004\u0008\u001f\u0010\u001dR\u001b\u00108\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0014\u001a\u0004\u0008.\u00104R\u001b\u00109\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0014\u001a\u0004\u00082\u0010\u001dR\u001b\u0010=\u001a\u00020:8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010\u0014\u001a\u0004\u0008;\u0010<R\u001b\u0010?\u001a\u00020:8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0014\u001a\u0004\u0008>\u0010<R\u001b\u0010A\u001a\u00020:8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010\u0014\u001a\u0004\u0008@\u0010<R\u001b\u0010D\u001a\u00020B8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u0014\u001a\u0004\u0008&\u0010CR\u001b\u0010G\u001a\u00020E8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010\u0014\u001a\u0004\u0008)\u0010FR\u0011\u0010H\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u00086\u00104\u00a8\u0006J"
    }
    d2 = {
        "Lio/didomi/sdk/z8;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/s5;",
        "resourcesHelper",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V",
        "Lio/didomi/sdk/k$i$b$a;",
        "buttonTheme",
        "",
        "backgroundColor",
        "Landroid/graphics/drawable/GradientDrawable;",
        "a",
        "(Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;",
        "Lio/didomi/sdk/s5;",
        "n",
        "()Lio/didomi/sdk/s5;",
        "Lio/didomi/sdk/k$i;",
        "b",
        "Lkotlin/Lazy;",
        "s",
        "()Lio/didomi/sdk/k$i;",
        "theme",
        "Lio/didomi/sdk/k$i$b;",
        "c",
        "()Lio/didomi/sdk/k$i$b;",
        "buttonsThemeConfig",
        "d",
        "()I",
        "highlightBackgroundColor",
        "e",
        "l",
        "regularBackgroundColor",
        "f",
        "p",
        "secondaryBackgroundColor",
        "g",
        "h",
        "q",
        "secondaryDividerColor",
        "i",
        "getThemeColor",
        "themeColor",
        "j",
        "primaryTextColor",
        "k",
        "r",
        "secondaryTextColor",
        "logoColor",
        "m",
        "linkColor",
        "()Landroid/graphics/drawable/GradientDrawable;",
        "highlightBackground",
        "o",
        "highlightTextColor",
        "regularBackground",
        "regularTextColor",
        "",
        "t",
        "()Z",
        "isDarkTheme",
        "u",
        "isFullscreen",
        "v",
        "isLinkColorSet",
        "Lio/didomi/sdk/M3;",
        "()Lio/didomi/sdk/M3;",
        "notice",
        "Lio/didomi/sdk/e4;",
        "()Lio/didomi/sdk/e4;",
        "preferences",
        "secondaryBackground",
        "w",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final w:Lio/didomi/sdk/z8$a;


# instance fields
.field private final a:Lio/didomi/sdk/s5;

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

.field private final u:Lkotlin/i;

.field private final v:Lkotlin/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/z8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/z8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/z8;->w:Lio/didomi/sdk/z8$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V
    .registers 4

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/didomi/sdk/z8;->a:Lio/didomi/sdk/s5;

    new-instance p2, Lio/didomi/sdk/z8$u;

    invoke-direct {p2, p1}, Lio/didomi/sdk/z8$u;-><init>(Lio/didomi/sdk/H;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->b:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$c;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->c:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$e;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$e;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->d:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$p;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$p;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->e:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$r;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$r;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->f:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$b;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->g:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$s;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$s;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->h:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$v;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$v;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->i:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$n;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$n;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->j:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$t;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$t;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->k:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$k;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$k;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->l:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$j;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$j;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->m:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$d;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->n:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$f;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$f;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->o:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$o;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$o;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->p:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$q;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$q;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->q:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$g;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$g;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->r:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$h;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$h;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->s:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$i;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$i;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->t:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$l;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$l;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->u:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/z8$m;

    invoke-direct {p1, p0}, Lio/didomi/sdk/z8$m;-><init>(Lio/didomi/sdk/z8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/z8;->v:Lkotlin/i;

    return-void
.end method

.method private final a(Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;
    .registers 7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1}, Lio/didomi/sdk/k$i$b$a;->g()Z

    move-result v1

    invoke-virtual {p1}, Lio/didomi/sdk/k$i$b$a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    if-eqz v1, :cond_1d

    iget-object v3, p0, Lio/didomi/sdk/z8;->a:Lio/didomi/sdk/s5;

    invoke-virtual {v3}, Lio/didomi/sdk/s5;->a()F

    move-result v3

    mul-float v2, v2, v3

    :cond_1d
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_25

    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_25
    invoke-virtual {p1}, Lio/didomi/sdk/k$i$b$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/k$i$b$a;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4b

    if-eqz v2, :cond_4b

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_41

    int-to-float p1, p1

    iget-object v1, p0, Lio/didomi/sdk/z8;->a:Lio/didomi/sdk/s5;

    invoke-virtual {v1}, Lio/didomi/sdk/s5;->a()F

    move-result v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    :cond_41
    sget-object v1, Lio/didomi/sdk/x;->a:Lio/didomi/sdk/x;

    invoke-virtual {v1, v2}, Lio/didomi/sdk/x;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_4f

    :cond_4b
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_4f
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/z8;Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/z8;->a(Lio/didomi/sdk/k$i$b$a;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/didomi/sdk/z8;)Lio/didomi/sdk/k$i$b;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/z8;->b()Lio/didomi/sdk/k$i$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/didomi/sdk/z8;)I
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/z8;->d()I

    move-result p0

    return p0
.end method

.method private final b()Lio/didomi/sdk/k$i$b;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->c:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$i$b;

    return-object v0
.end method

.method public static final synthetic c(Lio/didomi/sdk/z8;)I
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/z8;->l()I

    move-result p0

    return p0
.end method

.method private final d()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final l()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->e:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final p()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->f:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->l:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()Lio/didomi/sdk/M3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->u:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/M3;

    return-object v0
.end method

.method public final i()Lio/didomi/sdk/e4;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->v:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/e4;

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final k()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->p:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public final m()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->q:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final n()Lio/didomi/sdk/s5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->a:Lio/didomi/sdk/s5;

    return-object v0
.end method

.method public final o()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x4

    int-to-float v1, v1

    iget-object v2, p0, Lio/didomi/sdk/z8;->a:Lio/didomi/sdk/s5;

    invoke-virtual {v2}, Lio/didomi/sdk/s5;->a()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-direct {p0}, Lio/didomi/sdk/z8;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public final q()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final r()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->k:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final s()Lio/didomi/sdk/k$i;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->b:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$i;

    return-object v0
.end method

.method public final t()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->r:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final u()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->s:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final v()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/z8;->t:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
