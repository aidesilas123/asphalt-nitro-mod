###### Class com.apm.insight.l.v (com.apm.insight.l.v)
.class public final Lcom/apm/insight/l/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/l/v$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    return-object v1

    :cond_14
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    const/4 v5, 0x0

    :try_start_26
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5b

    const/4 v0, 0x0

    :goto_31
    :try_start_31
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    const/16 v7, 0x100

    if-gt v0, v7, :cond_45

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_45
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v7, :cond_53

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_5a

    add-int/lit8 v5, v5, 0x1

    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_56
    invoke-static {v6}, Lcom/apm/insight/l/k;->a(Ljava/io/Closeable;)V

    goto :goto_5e

    :catchall_5a
    move-object v1, v6

    :catchall_5b
    invoke-static {v1}, Lcom/apm/insight/l/k;->a(Ljava/io/Closeable;)V

    :goto_5e
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8a

    if-eqz v5, :cond_73

    const-string p0, "\t... skip "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lines\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :try_start_a
    invoke-static {p0, v1}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_15

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object p0

    :catchall_15
    :try_start_15
    const-string p0, ""
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object p0

    :catchall_1b
    move-exception p0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/io/PrintStream;Lcom/apm/insight/l/e$a;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-object v0, p1

    :goto_9
    new-instance v1, Lcom/apm/insight/l/e;

    invoke-direct {v1, p2, v0, p3}, Lcom/apm/insight/l/e;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;Lcom/apm/insight/l/e$a;)V

    :try_start_e
    invoke-static {p0, v1}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_11

    :catchall_11
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/apm/insight/l/v;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_34

    array-length v0, p0

    if-gtz v0, :cond_6

    goto :goto_34

    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_38

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v3, v2, :cond_2e

    aget-byte v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_34
    :goto_34
    const-string p0, ""

    return-object p0

    nop

    :array_38
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    invoke-static {v3, v0}, Lcom/apm/insight/l/v;->a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public static a([Ljava/lang/StackTraceElement;[Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7

    new-instance v0, Lcom/apm/insight/l/v$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apm/insight/l/v$a;-><init>(II)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_c
    array-length v4, p0

    if-ge v3, v4, :cond_41

    iget v4, v0, Lcom/apm/insight/l/v$a;->a:I

    if-ne v4, v1, :cond_24

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iput v3, v0, Lcom/apm/insight/l/v$a;->a:I

    iput v3, v0, Lcom/apm/insight/l/v$a;->b:I

    goto :goto_3e

    :cond_24
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    iput v3, v0, Lcom/apm/insight/l/v$a;->b:I

    invoke-virtual {v0}, Lcom/apm/insight/l/v$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lcom/apm/insight/l/v$a;

    invoke-direct {v0, v1, v1}, Lcom/apm/insight/l/v$a;-><init>(II)V

    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_41
    iget p1, v0, Lcom/apm/insight/l/v$a;->a:I

    if-eq p1, v1, :cond_4f

    array-length p0, p0

    iput p0, v0, Lcom/apm/insight/l/v$a;->b:I

    invoke-virtual {v0}, Lcom/apm/insight/l/v$a;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4f
    return-object v2
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7

    new-instance v0, Lcom/apm/insight/l/v$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apm/insight/l/v$a;-><init>(II)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_c
    array-length v4, p0

    if-ge v3, v4, :cond_39

    iget v4, v0, Lcom/apm/insight/l/v$a;->a:I

    if-ne v4, v1, :cond_20

    aget-object v4, p0, v3

    invoke-static {v4, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    iput v3, v0, Lcom/apm/insight/l/v$a;->a:I

    iput v3, v0, Lcom/apm/insight/l/v$a;->b:I

    goto :goto_36

    :cond_20
    aget-object v4, p0, v3

    invoke-static {v4, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    iput v3, v0, Lcom/apm/insight/l/v$a;->b:I

    invoke-virtual {v0}, Lcom/apm/insight/l/v$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lcom/apm/insight/l/v$a;

    invoke-direct {v0, v1, v1}, Lcom/apm/insight/l/v$a;-><init>(II)V

    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_39
    iget p1, v0, Lcom/apm/insight/l/v$a;->a:I

    if-eq p1, v1, :cond_47

    array-length p0, p0

    iput p0, v0, Lcom/apm/insight/l/v$a;->b:I

    invoke-virtual {v0}, Lcom/apm/insight/l/v$a;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_47
    return-object v2
.end method

.method private static a(Ljava/lang/StackTraceElement;I)V
    .registers 5

    :try_start_0
    const-string v0, "\tat "

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    const-string v0, "."

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "(Native Method)"

    :goto_20
    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    goto :goto_71

    :cond_24
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_76

    const-string v1, ")"

    if-eqz v0, :cond_5a

    :try_start_2c
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_76

    const-string v2, "("

    if-ltz v0, :cond_52

    :try_start_34
    invoke-static {v2, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    const-string v0, ":"

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_4b
    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-static {v1, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    goto :goto_71

    :cond_52
    invoke-static {v2, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    goto :goto_4b

    :cond_5a
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-ltz v0, :cond_6e

    const-string v0, "(Unknown Source:"

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4b

    :cond_6e
    const-string p0, "(Unknown Source)"

    goto :goto_20

    :goto_71
    const-string p0, "\n"

    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V
    :try_end_76
    .catchall {:try_start_34 .. :try_end_76} :catchall_76

    :catchall_76
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p1, p0}, Lcom/apm/insight/nativecrash/NativeImpl;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;I)V
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->c(Ljava/lang/Throwable;I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method private static a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :try_start_4
    invoke-static {p1, p3}, Lcom/apm/insight/nativecrash/NativeImpl;->a(ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/apm/insight/nativecrash/NativeImpl;->a(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a

    :catchall_a
    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->b(Ljava/lang/Throwable;I)V

    array-length p2, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, p2, :cond_1a

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/StackTraceElement;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_42

    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object p2

    array-length v0, p2

    :goto_25
    if-ge v1, v0, :cond_42

    aget-object v2, p2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Suppressed: "

    invoke-static {v2, p1, v4, v3}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_42
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4d

    const-string p2, "Caused by: "

    invoke-static {p0, p1, p2, p3}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 14

    if-eqz p0, :cond_b6

    if-nez p1, :cond_6

    goto/16 :goto_b6

    :cond_6
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v1, v8

    const/16 v2, 0x180

    const/4 v3, 0x0

    if-le v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    array-length v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    const-string v6, "\tat "

    if-ge v4, v2, :cond_66

    aget-object v7, v8, v4

    if-eqz v1, :cond_4f

    const/16 v9, 0x100

    if-le v5, v9, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t... skip "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v8

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x80

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    :cond_4f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_66
    :goto_66
    if-eqz v1, :cond_85

    array-length v1, v8

    add-int/lit8 v1, v1, -0x80

    :goto_6b
    array-length v2, v8

    if-ge v1, v2, :cond_85

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v8, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_a4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_91
    if-ge v11, v10, :cond_a4

    aget-object v1, v9, v11

    const/16 v7, 0x80

    const-string v4, "Suppressed: "

    const-string v5, "\t"

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_91

    :cond_a4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_b6

    const/16 v7, 0x80

    const-string v4, "Caused by: "

    const-string v5, ""

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_b6
    :goto_b6
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/io/PrintWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10a

    :cond_2b
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    array-length v1, v12

    const/4 v2, 0x0

    if-le v1, v11, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_53
    const-string v6, "\tat "

    if-ge v4, v3, :cond_93

    aget-object v7, v12, v4

    if-eqz v1, :cond_7c

    if-le v5, v11, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t... skip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v12

    sub-int/2addr v4, v5

    div-int/lit8 v5, v11, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    :cond_7c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_93
    :goto_93
    if-eqz v1, :cond_b3

    array-length v1, v12

    div-int/lit8 v3, v11, 0x2

    sub-int/2addr v1, v3

    :goto_99
    array-length v3, v12

    if-ge v1, v3, :cond_b3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v12, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    :cond_b3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/16 v13, 0xa

    if-lt v1, v3, :cond_f0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v14

    array-length v15, v14

    const/4 v7, 0x0

    :goto_c1
    if-ge v7, v15, :cond_f0

    aget-object v1, v14, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    div-int/lit8 v2, v11, 0x2

    if-le v2, v13, :cond_dd

    move/from16 v16, v2

    goto :goto_df

    :cond_dd
    const/16 v16, 0xa

    :goto_df
    const-string v4, "Suppressed: "

    move-object/from16 v2, p1

    move-object v3, v12

    move-object/from16 v6, p5

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_c1

    :cond_f0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10a

    div-int/lit8 v1, v11, 0x2

    if-le v1, v13, :cond_fc

    move v6, v1

    goto :goto_fe

    :cond_fc
    const/16 v6, 0xa

    :goto_fe
    const-string v3, "Caused by: "

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_10a
    :goto_10a
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_80

    if-nez p1, :cond_6

    goto/16 :goto_80

    :cond_6
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v1, v8

    const/16 v2, 0x180

    const/4 v3, 0x0

    if-le v1, v2, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    array-length v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_27
    if-ge v4, v2, :cond_3f

    aget-object v6, v8, v4

    if-eqz v1, :cond_37

    const/16 v7, 0x100

    if-le v5, v7, :cond_37

    sget-object v2, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_37
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3f
    :goto_3f
    if-eqz v1, :cond_4f

    array-length v1, v8

    add-int/lit8 v1, v1, -0x80

    :goto_44
    array-length v2, v8

    if-ge v1, v2, :cond_4f

    aget-object v2, v8, v1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_4f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_6e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_5b
    if-ge v11, v10, :cond_6e

    aget-object v1, v9, v11

    const/16 v7, 0x80

    const-string v4, "Suppressed: "

    const-string v5, "\t"

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_80

    const/16 v7, 0x80

    const-string v4, "Caused by: "

    const-string v5, ""

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_80
    :goto_80
    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a9

    :cond_15
    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    array-length v1, v11

    const/4 v2, 0x0

    if-le v1, v10, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    sget-object v3, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2b
    if-ge v4, v3, :cond_41

    aget-object v6, v11, v4

    if-eqz v1, :cond_39

    if-le v5, v10, :cond_39

    sget-object v3, Lcom/apm/insight/l/v;->a:Ljava/lang/StackTraceElement;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_39
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_41
    :goto_41
    if-eqz v1, :cond_52

    array-length v1, v11

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v1, v3

    :goto_47
    array-length v3, v11

    if-ge v1, v3, :cond_52

    aget-object v3, v11, v1

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/16 v12, 0xa

    if-lt v1, v3, :cond_8f

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_60
    if-ge v15, v14, :cond_8f

    aget-object v1, v13, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    div-int/lit8 v2, v10, 0x2

    if-le v2, v12, :cond_7e

    move/from16 v16, v2

    goto :goto_80

    :cond_7e
    const/16 v16, 0xa

    :goto_80
    const-string v4, "Suppressed: "

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v6, p5

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_60

    :cond_8f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a9

    div-int/lit8 v1, v10, 0x2

    if-le v1, v12, :cond_9b

    move v6, v1

    goto :goto_9d

    :cond_9b
    const/16 v6, 0xa

    :goto_9d
    const-string v3, "Caused by: "

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/util/List;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1b

    :cond_a
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1b

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    :goto_1b
    return v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ")"

    const-string v2, "("

    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-nez v4, :cond_13

    return-object v3

    :cond_13
    const-string v6, "thread_all_count"

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/apm/insight/l/v;->c(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_29

    if-eqz v0, :cond_5f

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_29

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_29

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5f

    goto :goto_29

    :cond_5f
    const-string v10, "thread_name"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    if-eqz v7, :cond_d2

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    array-length v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_91
    if-ge v13, v11, :cond_c4

    aget-object v14, v7, v13

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    goto :goto_91

    :cond_c4
    const-string v7, "thread_stack"

    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_d0

    goto :goto_d2

    :cond_d0
    const/4 v9, 0x0

    goto :goto_d3

    :cond_d2
    :goto_d2
    const/4 v9, 0x1

    :goto_d3
    if-eqz v9, :cond_29

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_29

    :cond_da
    const-string v0, "thread_stacks"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_df
    .catchall {:try_start_7 .. :try_end_df} :catchall_e0

    return-object v5

    :catchall_e0
    return-object v3
.end method

.method private static b(Ljava/lang/Throwable;I)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    if-eqz v0, :cond_20

    const-string p0, ": "

    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V

    :cond_20
    const-string p0, "\n"

    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/String;I)V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_25

    :catchall_25
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)[Ljava/lang/StackTraceElement;
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_8

    :catchall_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method private static c(Ljava/lang/Throwable;I)V
    .registers 8

    if-eqz p0, :cond_3f

    if-gtz p1, :cond_5

    goto :goto_3f

    :cond_5
    invoke-static {p0, p1}, Lcom/apm/insight/l/v;->b(Ljava/lang/Throwable;I)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Lcom/apm/insight/l/v;->a(Ljava/lang/StackTraceElement;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    array-length v1, v0

    :goto_24
    if-ge v2, v1, :cond_32

    aget-object v3, v0, v2

    const-string v4, "Suppressed: "

    const-string v5, "\t"

    invoke-static {v3, p1, v4, v5}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3f

    const-string v0, "Caused by: "

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/apm/insight/l/v;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/apm/insight/l/j;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    goto :goto_2a

    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    return v2
.end method

.method public static c(Ljava/lang/Throwable;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-eqz p0, :cond_19

    :try_start_7
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    goto :goto_5

    :catchall_19
    :cond_19
    return v0
.end method

.method public static d(Ljava/lang/Throwable;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-eqz p0, :cond_32

    const/4 v2, 0x1

    :try_start_8
    instance-of v3, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allocate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thrown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    return v2

    :cond_25
    const/16 v3, 0x14

    if-le v1, v3, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_31

    goto :goto_5

    :catchall_31
    return v2

    :cond_32
    return v0
.end method
