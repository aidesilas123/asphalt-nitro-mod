###### Class io.didomi.drawable.C1920v3 (io.didomi.sdk.v3)
.class public Lio/didomi/sdk/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0010J/\u0010\r\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0015J7\u0010\r\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0017J-\u0010\u0018\u001a\u00020\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u0018\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J%\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010\u0016\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ9\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u001eJE\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010\r\u001a\u00020$2\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008\r\u0010+J\'\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012\u00a2\u0006\u0004\u0008\r\u0010,J/\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\r\u0010\u0019J/\u0010-\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008-\u0010\u0019J/\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00112\u0006\u0010 \u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0019\u0010-\u001a\u00020/2\u0008\u0008\u0002\u0010.\u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u0008-\u00100J;\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012\u00a2\u0006\u0004\u0008\r\u0010\u001eJ\u000f\u00101\u001a\u00020$H\u0012\u00a2\u0006\u0004\u00081\u0010&J\'\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u0011H\u0012\u00a2\u0006\u0004\u0008\r\u00102J\u001b\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0012\u00a2\u0006\u0004\u0008\u0018\u00102J1\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00112\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0012\u00a2\u0006\u0004\u0008\u0018\u00103J7\u0010\r\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u000b2\u0014\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0012\u00a2\u0006\u0004\u0008\r\u00106J\u000f\u00107\u001a\u00020$H\u0012\u00a2\u0006\u0004\u00087\u0010&J\u0017\u00108\u001a\u00020$2\u0006\u0010 \u001a\u00020\u000bH\u0012\u00a2\u0006\u0004\u00088\u00109R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010:R\u0014\u0010\u0005\u001a\u00020\u00048\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010;R.\u0010=\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010<R.\u0010>\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008-\u0010<R.\u0010?\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00110\u00118\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u00088\u0010<R\"\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012@\u0012X\u0092.\u00a2\u0006\u0006\n\u0004\u0008@\u0010<R\u001b\u0010C\u001a\u00020\u000b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010A\u001a\u0004\u0008\u001b\u0010BR \u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u00081\u0010<R \u0010E\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00118\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010<R!\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8RX\u0092\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010A\u001a\u0004\u0008-\u0010FR\"\u0010J\u001a\u00020\u000b8\u0016@\u0016X\u0096.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008@\u0010B\"\u0004\u0008@\u00109R*\u0010Q\u001a\u00020K2\u0006\u0010L\u001a\u00020K8\u0016@TX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008\"\u0010O\"\u0004\u0008\r\u0010PR\u0014\u0010R\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010B\u00a8\u0006S"
    }
    d2 = {
        "Lio/didomi/sdk/v3;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/s5;",
        "resourcesHelper",
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "initializeParameters",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V",
        "",
        "",
        "languages",
        "a",
        "(Ljava/util/Set;)Ljava/util/Set;",
        "language",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "customContent",
        "Lio/didomi/sdk/W5;",
        "transform",
        "(Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;",
        "key",
        "(Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;)Ljava/lang/String;",
        "b",
        "(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;",
        "locale",
        "c",
        "(Ljava/lang/String;)Ljava/util/Map;",
        "additionalMacros",
        "(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;",
        "(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;",
        "languageCode",
        "Lio/didomi/sdk/u3;",
        "g",
        "(Ljava/lang/String;)Lio/didomi/sdk/u3;",
        "",
        "i",
        "()V",
        "",
        "allVendors",
        "iabVendors",
        "nonIABVendors",
        "(III)V",
        "(Ljava/util/Map;)Ljava/lang/String;",
        "d",
        "baseLanguageCode",
        "",
        "(Ljava/lang/String;)Z",
        "h",
        "()Ljava/util/Map;",
        "(Ljava/util/Map;)Ljava/util/Map;",
        "contentBeforeMacros",
        "macros",
        "(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;",
        "j",
        "e",
        "(Ljava/lang/String;)V",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/s5;",
        "Ljava/util/Map;",
        "consolidatedTexts",
        "distributedTexts",
        "textsConfiguration",
        "f",
        "Lkotlin/Lazy;",
        "()Ljava/lang/String;",
        "defaultLanguage",
        "defaultCountriesBySdk",
        "fallbackCodesBySdk",
        "()Ljava/util/Set;",
        "enabledAndAvailableLanguages",
        "k",
        "Ljava/lang/String;",
        "selectedLanguageCode",
        "Ljava/util/Locale;",
        "<set-?>",
        "l",
        "Ljava/util/Locale;",
        "()Ljava/util/Locale;",
        "(Ljava/util/Locale;)V",
        "selectedLocale",
        "selectedLanguage",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private final b:Lio/didomi/sdk/s5;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/i;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lkotlin/i;

.field public k:Ljava/lang/String;

.field private l:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V
    .registers 5

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializeParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/v3;->b:Lio/didomi/sdk/s5;

    new-instance p2, Lio/didomi/sdk/v3$a;

    invoke-direct {p2, p0}, Lio/didomi/sdk/v3$a;-><init>(Lio/didomi/sdk/v3;)V

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/v3;->g:Lkotlin/i;

    invoke-virtual {p1}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object p2

    invoke-interface {p2}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/u5$a;->b()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object p1

    invoke-interface {p1}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/u5$a;->d()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/v3;->i:Ljava/util/Map;

    new-instance p1, Lio/didomi/sdk/v3$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/v3$b;-><init>(Lio/didomi/sdk/v3;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/v3;->j:Lkotlin/i;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "getDefault()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/v3;->l:Ljava/util/Locale;

    invoke-direct {p0}, Lio/didomi/sdk/v3;->j()V

    invoke-direct {p0}, Lio/didomi/sdk/v3;->h()V

    iget-object p1, p3, Lio/didomi/sdk/DidomiInitializeParameters;->languageCode:Ljava/lang/String;

    if-eqz p1, :cond_60

    invoke-virtual {p0, p1}, Lio/didomi/sdk/v3;->g(Ljava/lang/String;)Lio/didomi/sdk/u3;

    :cond_60
    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    return-object p0
.end method

.method public static synthetic a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    if-nez p5, :cond_12

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_8

    sget-object p2, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    const/4 p3, 0x0

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/v3;->b(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getTranslatedText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 7

    if-nez p6, :cond_1a

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_8

    sget-object p2, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    :cond_8
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_d

    const/4 p3, 0x0

    :cond_d
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object p4

    :cond_15
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getTranslation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    sget-object p2, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    :cond_8
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCustomTranslation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;
    .registers 6

    if-nez p5, :cond_d

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_8

    sget-object p3, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCustomTranslationWithDefault"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/W5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/didomi/sdk/v3;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    move-object p1, v0

    :goto_15
    if-eqz p1, :cond_21

    if-nez p3, :cond_1d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1d
    invoke-direct {p0, p1, p3, p2}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/didomi/sdk/W5;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v0, p1

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_12

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_12

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/g;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v0, 0x4

    const/4 v7, 0x0

    move-object v3, v6

    move-object v4, p1

    move v6, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/g;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_58
    invoke-virtual {p0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object p1

    invoke-static {v0, p3, p1}, Lio/didomi/sdk/V5;->a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_a
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/v3;->d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/v3;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method private a()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :cond_1d
    const-string v3, "preferences.content.agreeToAll"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->d()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :cond_2d
    const-string v4, "preferences.content.disagreeToAll"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->g()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_3d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_3d
    const-string v5, "preferences.content.save"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->j()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_4d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :cond_4d
    const-string v6, "preferences.content.text"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->l()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_5d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :cond_5d
    const-string v7, "preferences.content.title"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->k()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_6d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v7

    :cond_6d
    const-string v8, "preferences.content.textVendors"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->i()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_7d

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_7d
    const-string v8, "preferences.content.subTextVendors"

    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x7

    new-array v8, v8, [Lkotlin/Pair;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v3, v8, v2

    const/4 v3, 0x2

    aput-object v4, v8, v3

    const/4 v4, 0x3

    aput-object v5, v8, v4

    const/4 v5, 0x4

    aput-object v6, v8, v5

    const/4 v6, 0x5

    aput-object v7, v8, v6

    const/4 v7, 0x6

    aput-object v1, v8, v7

    invoke-static {v8}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$f;->a()Lio/didomi/sdk/k$f$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->e()Ljava/util/Map;

    move-result-object v7

    const-string v8, "notice.content.notice"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->a()Ljava/util/Map;

    move-result-object v8

    const-string v10, "notice.content.dismiss"

    invoke-static {v10, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->b()Ljava/util/Map;

    move-result-object v10

    const-string v11, "notice.content.deny"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->c()Ljava/util/Map;

    move-result-object v11

    const-string v12, "notice.content.learnMore"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-virtual {v1}, Lio/didomi/sdk/k$f$b;->f()Ljava/util/Map;

    move-result-object v1

    const-string v12, "notice.content.privacyPolicy"

    invoke-static {v12, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    new-array v6, v6, [Lkotlin/Pair;

    aput-object v7, v6, v9

    aput-object v8, v6, v2

    aput-object v10, v6, v3

    aput-object v11, v6, v4

    aput-object v1, v6, v5

    invoke-static {v6}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private b()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{privacyPolicyURL}"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{websiteName}"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\"{website_name}\""

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v3}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    if-nez v0, :cond_a

    const-string v0, "macros"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1a

    :cond_17
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v0, p2}, Lio/didomi/sdk/A3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_43

    iget-object p2, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3a

    if-eqz p1, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_35

    :cond_34
    move-object p2, v1

    :goto_35
    if-nez p2, :cond_38

    goto :goto_3a

    :cond_38
    move-object v1, p2

    goto :goto_43

    :cond_3a
    :goto_3a
    if-eqz p1, :cond_43

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_43
    :goto_43
    return-object v1
.end method

.method private d(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/didomi/sdk/v3;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v0, p2}, Lio/didomi/sdk/A3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_16

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_16
    return-object v1
.end method

.method private d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/v3;->j:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/A3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/A3;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/v3;->a(Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/v3;->f(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .registers 4

    invoke-direct {p0}, Lio/didomi/sdk/v3;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/v3;->d:Ljava/util/Map;

    iget-object v0, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->i()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/v3;->e:Ljava/util/Map;

    iget-object v0, p0, Lio/didomi/sdk/v3;->d:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const-string v0, "distributedTexts"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1d
    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lio/didomi/sdk/v3;->e:Ljava/util/Map;

    if-nez v2, :cond_2b

    const-string v2, "textsConfiguration"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2c

    :cond_2b
    move-object v1, v2

    :goto_2c
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object v0, p0, Lio/didomi/sdk/v3;->c:Ljava/util/Map;

    invoke-direct {p0}, Lio/didomi/sdk/v3;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    return-void
.end method

.method private j()V
    .registers 7

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-direct {p0}, Lio/didomi/sdk/v3;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/A3;->a(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0}, Lio/didomi/sdk/v3;->d()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    iget-object v4, p0, Lio/didomi/sdk/v3;->i:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lio/didomi/sdk/A3;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, ""

    :cond_22
    sget-object v2, Lio/didomi/sdk/v8;->a:Lio/didomi/sdk/v8;

    invoke-virtual {v2, v0}, Lio/didomi/sdk/v8;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct {p0, v0}, Lio/didomi/sdk/v3;->e(Ljava/lang/String;)V

    return-void

    :cond_2e
    if-eqz v1, :cond_38

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/v3;->e(Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-direct {p0}, Lio/didomi/sdk/v3;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_52

    invoke-direct {p0}, Lio/didomi/sdk/v3;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/didomi/sdk/v3;->e(Ljava/lang/String;)V

    return-void

    :cond_52
    iget-object v0, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/u5$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/v3;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_2a

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2a
    :goto_2a
    return-object p1
.end method

.method public a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/W5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_27

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/v3;->b:Lio/didomi/sdk/s5;

    invoke-virtual {v0, p1, p4}, Lio/didomi/sdk/s5;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_29

    invoke-direct {p0, p3}, Lio/didomi/sdk/v3;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-direct {p0, p4, p3, p2}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    move-object p1, p2

    goto :goto_29

    :cond_27
    :goto_27
    const-string p1, ""

    :cond_29
    :goto_29
    return-object p1
.end method

.method public a(Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/didomi/sdk/W5;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object v1, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    if-nez v1, :cond_16

    const-string v1, "macros"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    invoke-direct {p0, p1, v0, p2}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object v0

    :cond_1b
    if-nez v0, :cond_1f

    const-string v0, ""

    :cond_1f
    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/W5;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object v0, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    if-nez v0, :cond_1a

    const-string v0, "macros"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1a
    invoke-direct {p0, p1, v0, p3}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Ljava/util/Map;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2c

    :cond_20
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_2c
    return-object p1
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "languages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    invoke-static {v0}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(III)V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    if-nez v0, :cond_a

    const-string v0, "macros"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-static {v0}, Lkotlin/collections/d0;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "{numberOfPartners}"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{numberOfIABPartners}"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{numberOfNonIABPartners}"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lio/didomi/sdk/v3;->f:Ljava/util/Map;

    return-void
.end method

.method protected a(Ljava/util/Locale;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/v3;->l:Ljava/util/Locale;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/A3;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/v3;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_2a

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2a
    return-object p1
.end method

.method public b(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/W5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    move-object v0, v2

    :goto_23
    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/didomi/sdk/v3;->a(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_36

    move-object v2, p2

    :cond_36
    if-nez v2, :cond_39

    goto :goto_3c

    :cond_39
    move-object p1, v2

    goto :goto_3c

    :cond_3b
    move-object p1, v0

    :goto_3c
    return-object p1
.end method

.method public b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_17
    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/v3;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/v3;->c:Ljava/util/Map;

    if-nez v0, :cond_f

    const-string v0, "consolidatedTexts"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/B3;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/v3;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "selectedLanguageCode"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/v3;->k:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)Lio/didomi/sdk/u3;
    .registers 11

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/v8;->a:Lio/didomi/sdk/v8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/v8;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "Error, language \'"

    const/4 v4, 0x0

    if-nez v1, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' doesn\'t fit the requested format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v2, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lio/didomi/sdk/u3;->a:Lio/didomi/sdk/u3;

    return-object p1

    :cond_2b
    sget-object v1, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-direct {p0}, Lio/didomi/sdk/v3;->d()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v6}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v6

    invoke-interface {v6}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/u5$a;->b()Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lio/didomi/sdk/v3;->a:Lio/didomi/sdk/H;

    invoke-virtual {v7}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v7

    invoke-interface {v7}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/u5$a;->d()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1, p1}, Lio/didomi/sdk/A3;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v1, v5, v6, v7, v8}, Lio/didomi/sdk/A3;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    const-string v1, ""

    :cond_59
    invoke-virtual {v0, v1}, Lio/didomi/sdk/v8;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported or not enabled."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v2, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lio/didomi/sdk/u3;->b:Lio/didomi/sdk/u3;

    return-object p1

    :cond_79
    :try_start_79
    invoke-direct {p0, v1}, Lio/didomi/sdk/v3;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/v3;->h()V

    sget-object p1, Lio/didomi/sdk/u3;->c:Lio/didomi/sdk/u3;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_9e

    :catch_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v2, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lio/didomi/sdk/v3;->i()V

    sget-object p1, Lio/didomi/sdk/u3;->b:Lio/didomi/sdk/u3;

    :goto_9e
    return-object p1
.end method

.method public g()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/v3;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public i()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/v3;->j()V

    invoke-direct {p0}, Lio/didomi/sdk/v3;->h()V

    return-void
.end method

###### Class io.didomi.drawable.C1920v3.a (io.didomi.sdk.v3$a)
.class final Lio/didomi/sdk/v3$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/v3;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/String;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/v3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/v3;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/v3$a;->a:Lio/didomi/sdk/v3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/v3$a;->a:Lio/didomi/sdk/v3;

    invoke-static {v0}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->d()Lio/didomi/sdk/k$e;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/v3$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.C1920v3.b (io.didomi.sdk.v3$b)
.class final Lio/didomi/sdk/v3$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/v3;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "",
        "a",
        "()Ljava/util/Set;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/v3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/v3;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    invoke-static {v0}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->d()Lio/didomi/sdk/k$e;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/v3;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    invoke-static {v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v1

    invoke-interface {v1}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/u5$a;->a()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v5, v1, v4}, Lio/didomi/sdk/A3;->a(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4a
    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/v3$b;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
