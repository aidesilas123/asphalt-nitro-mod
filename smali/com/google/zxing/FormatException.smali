###### Class com.google.zxing.FormatException (com.google.zxing.FormatException)
.class public final Lcom/google/zxing/FormatException;
.super Lcom/google/zxing/ReaderException;
.source "FormatException.java"


# static fields
.field private static final c:Lcom/google/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0}, Lcom/google/zxing/FormatException;-><init>()V

    sput-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    sget-object v1, Lcom/google/zxing/ReaderException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/ReaderException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getFormatInstance()Lcom/google/zxing/FormatException;
    .registers 1

    sget-boolean v0, Lcom/google/zxing/ReaderException;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0}, Lcom/google/zxing/FormatException;-><init>()V

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    :goto_c
    return-object v0
.end method

.method public static getFormatInstance(Ljava/lang/Throwable;)Lcom/google/zxing/FormatException;
    .registers 2

    sget-boolean v0, Lcom/google/zxing/ReaderException;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0, p0}, Lcom/google/zxing/FormatException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    :goto_c
    return-object v0
.end method
