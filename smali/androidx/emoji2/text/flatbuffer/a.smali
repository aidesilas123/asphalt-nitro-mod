###### Class androidx.emoji2.text.flatbuffer.a (androidx.emoji2.text.flatbuffer.a)
.class public final synthetic Landroidx/emoji2/text/flatbuffer/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Landroidx/emoji2/text/flatbuffer/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/emoji2/text/flatbuffer/a;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/a;-><init>()V

    sput-object v0, Landroidx/emoji2/text/flatbuffer/a;->a:Landroidx/emoji2/text/flatbuffer/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Utf8Old;->lambda$static$0()Landroidx/emoji2/text/flatbuffer/Utf8Old$Cache;

    move-result-object v0

    return-object v0
.end method
