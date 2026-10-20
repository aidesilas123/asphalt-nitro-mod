###### Class com.facebook.internal.instrument.crashreport.b (com.facebook.internal.instrument.crashreport.b)
.class public final synthetic Lcom/facebook/internal/instrument/crashreport/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/instrument/crashreport/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/crashreport/b;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/crashreport/b;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/crashreport/b;->a:Lcom/facebook/internal/instrument/crashreport/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/internal/instrument/InstrumentData;

    check-cast p2, Lcom/facebook/internal/instrument/InstrumentData;

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->b(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I

    move-result p1

    return p1
.end method
