###### Class com.koushikdutta.quack.QuackException (com.koushikdutta.quack.QuackException)
.class public final Lcom/koushikdutta/quack/QuackException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final STACK_TRACE_CLASS_NAME:Ljava/lang/String; = "JavaScript"

.field private static final STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1559ef3bb287a0b5L


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s*at (\\[?)(.*?)]? \\((.*?):?(\\d+)?\\).*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/quack/QuackException;->STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/koushikdutta/quack/QuackException;->getErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackException;->addJSStack(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static addJSStack(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 13

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget-object v5, v2, v1

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_28
    if-ge v3, v7, :cond_5a

    aget-object v9, v6, v3

    if-nez v8, :cond_54

    invoke-virtual {v9, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    invoke-virtual {v9, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40

    invoke-virtual {v9, v2}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    :cond_40
    const/4 v8, 0x1

    :goto_41
    array-length v10, p1

    if-ge v8, v10, :cond_53

    aget-object v10, p1, v8

    invoke-static {v10}, Lcom/koushikdutta/quack/QuackException;->toStackTraceElement(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v10

    if-nez v10, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_53
    const/4 v8, 0x1

    :cond_54
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_5a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static addJavaStack(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 15

    const-string v0, "\n"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v2, p0, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object p0, p0, v4

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object v5, p0, v4

    aget-object v6, p0, v0

    aget-object p0, p0, v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_28
    if-ge v8, v7, :cond_70

    aget-object v10, p1, v8

    if-nez v9, :cond_44

    invoke-virtual {v10, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    invoke-virtual {v10, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    invoke-virtual {v10, p0}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    :cond_40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :cond_44
    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v11, v12

    const-string v10, "\n    at [%s.%s] (%s:%s)"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method private static toStackTraceElement(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .registers 6

    sget-object v0, Lcom/koushikdutta/quack/QuackException;->STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    const-string v1, "JavaScript"

    goto :goto_2b

    :cond_29
    const-string v1, "<javascript>"

    :goto_2b
    new-instance v2, Ljava/lang/StackTraceElement;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2
.end method
