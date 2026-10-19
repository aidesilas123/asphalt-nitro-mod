###### Class androidx.core.content.r (androidx.core.content.r)
.class public final synthetic Landroidx/core/content/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# static fields
.field public static final synthetic a:Landroidx/core/content/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/content/r;

    invoke-direct {v0}, Landroidx/core/content/r;-><init>()V

    sput-object v0, Landroidx/core/content/r;->a:Landroidx/core/content/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer;->lambda$sanitizeByThrowing$1(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
