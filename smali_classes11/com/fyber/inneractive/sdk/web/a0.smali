###### Class com.fyber.inneractive.sdk.web.a0 (com.fyber.inneractive.sdk.web.a0)
.class public Lcom/fyber/inneractive/sdk/web/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/text/SimpleDateFormat;


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "max-age=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fyber/inneractive/sdk/web/a0;->g:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/web/a0;->h:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/a0;->a:[B

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/web/a0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/web/a0;->d:Ljava/lang/String;

    iput p5, p0, Lcom/fyber/inneractive/sdk/web/a0;->e:I

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/web/a0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/a0;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_15
    const/4 v3, 0x1

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_26

    goto/16 :goto_fd

    :cond_26
    const-wide/16 v5, 0x1

    if-eqz v4, :cond_9c

    const-string v7, "Cache-Control"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    sget-object v3, Lcom/fyber/inneractive/sdk/web/a0;->g:Ljava/util/regex/Pattern;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-ne v8, v2, :cond_5d

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/String;I)I

    move-result v3

    goto :goto_5e

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "public"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_83

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "private"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_83

    int-to-long v8, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v3, v8, v5

    if-lez v3, :cond_f7

    :cond_83
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "no-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f7

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "must-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f7

    goto :goto_f5

    :cond_9c
    if-eqz v4, :cond_a7

    const-string v7, "Vary"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    goto :goto_f7

    :cond_a7
    if-eqz v4, :cond_c4

    const-string v7, "Pragma"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c4

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    const-string v3, "no-cache"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    goto/16 :goto_16

    :cond_c4
    if-eqz v4, :cond_16

    const-string v7, "Expires"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_16

    :try_start_d8
    sget-object v7, Lcom/fyber/inneractive/sdk/web/a0;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_f7

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v7, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_f1
    .catch Ljava/text/ParseException; {:try_start_d8 .. :try_end_f1} :catch_fa

    cmp-long v5, v7, v3

    if-lez v5, :cond_f7

    :goto_f5
    goto/16 :goto_15

    :cond_f7
    :goto_f7
    const/4 v3, 0x0

    goto/16 :goto_16

    :catch_fa
    nop

    goto/16 :goto_16

    :cond_fd
    :goto_fd
    return v3
.end method

.method public b()Landroid/webkit/WebResourceResponse;
    .registers 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    new-instance v7, Landroid/webkit/WebResourceResponse;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/a0;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/web/a0;->d:Ljava/lang/String;

    iget v3, p0, Lcom/fyber/inneractive/sdk/web/a0;->e:I

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/web/a0;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/web/a0;->b:Ljava/util/Map;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/a0;->a:[B

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v7
.end method
