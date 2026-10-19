###### Class com.vungle.ads.internal.util.b (com.vungle.ads.internal.util.b)
.class public final synthetic Lcom/vungle/ads/internal/util/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/vungle/ads/internal/util/FileUtility$a;


# static fields
.field public static final synthetic a:Lcom/vungle/ads/internal/util/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/util/b;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/b;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/b;->a:Lcom/vungle/ads/internal/util/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .registers 2

    invoke-static {p1}, Lcom/vungle/ads/internal/util/FileUtility;->a(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object p1

    return-object p1
.end method
