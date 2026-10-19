###### Class com.mbridge.msdk.e.a.a.h (com.mbridge.msdk.e.a.a.h)
.class final Lcom/mbridge/msdk/e/a/a/h;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/e/a/a/h$a;
    }
.end annotation


# direct methods
.method static a(Ljava/io/InputStream;ILcom/mbridge/msdk/e/a/a/c;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    new-instance v1, Lcom/mbridge/msdk/e/a/a/j;

    invoke-direct {v1, p2, p1}, Lcom/mbridge/msdk/e/a/a/j;-><init>(Lcom/mbridge/msdk/e/a/a/c;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    :try_start_a
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a(I)[B

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2f

    :goto_e
    :try_start_e
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_19

    invoke-virtual {v1, p1, v2, v3}, Lcom/mbridge/msdk/e/a/a/j;->write([BII)V

    goto :goto_e

    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2d

    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/e/a/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_26
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/a/j;->close()V

    return-object v3

    :catchall_2d
    move-exception v3

    goto :goto_31

    :catchall_2f
    move-exception v3

    const/4 p1, 0x0

    :goto_31
    if-eqz p0, :cond_3c

    :try_start_33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/mbridge/msdk/e/a/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/e/a/a/c;->a([B)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/e/a/a/j;->close()V

    throw v3
.end method

###### Class com.mbridge.msdk.e.a.a.h.AnonymousClass1 (com.mbridge.msdk.e.a.a.h$1)
.class final synthetic Lcom/mbridge/msdk/e/a/a/h$1;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.e.a.a.h.a (com.mbridge.msdk.e.a.a.h$a)
.class final Lcom/mbridge/msdk/e/a/a/h$a;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/e/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/mbridge/msdk/e/a/u;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/e/a/u;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/a/a/h$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/e/a/a/h$a;->b:Lcom/mbridge/msdk/e/a/u;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/mbridge/msdk/e/a/u;Lcom/mbridge/msdk/e/a/a/h$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/e/a/a/h$a;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/e/a/u;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/e/a/a/h$a;)Lcom/mbridge/msdk/e/a/u;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/a/a/h$a;->b:Lcom/mbridge/msdk/e/a/u;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/e/a/a/h$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/e/a/a/h$a;->a:Ljava/lang/String;

    return-object p0
.end method
