###### Class com.facebook.internal.r (com.facebook.internal.r)
.class public final synthetic Lcom/facebook/internal/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/r;

    invoke-direct {v0}, Lcom/facebook/internal/r;-><init>()V

    sput-object v0, Lcom/facebook/internal/r;->a:Lcom/facebook/internal/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
