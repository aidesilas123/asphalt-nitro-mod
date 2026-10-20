###### Class com.facebook.internal.instrument.anrreport.c (com.facebook.internal.instrument.anrreport.c)
.class public final synthetic Lcom/facebook/internal/instrument/anrreport/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/instrument/anrreport/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/internal/instrument/anrreport/c;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/anrreport/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/anrreport/c;->a:Lcom/facebook/internal/instrument/anrreport/c;

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

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/anrreport/ANRHandler;->b(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I

    move-result p1

    return p1
.end method
