###### Class com.facebook.internal.instrument.errorreport.c (com.facebook.internal.instrument.errorreport.c)
.class public final synthetic Lcom/facebook/internal/instrument/errorreport/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/instrument/errorreport/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/errorreport/c;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/errorreport/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/errorreport/c;->a:Lcom/facebook/internal/instrument/errorreport/c;

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

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->c(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
