import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

// MARK: - Root Interface

/// The `RootProtocol` protocol exposes the methods and properties of an underlying `GtkRoot` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Root`.
/// Alternatively, use `RootRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget to a hierarchy of widgets. The root widget takes care of providing the
/// connection to the windowing system and manages layout, drawing and event delivery
/// for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
public protocol RootProtocol: NativeProtocol {
        /// Untyped pointer to the underlying `GtkRoot` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRoot` instance.
    var root_ptr: UnsafeMutablePointer<GtkRoot>! { get }

}

/// The `RootRef` type acts as a lightweight Swift reference to an underlying `GtkRoot` instance.
/// It exposes methods that can operate on this data type through `RootProtocol` conformance.
/// Use `RootRef` only as an `unowned` reference to an existing `GtkRoot` instance.
///
/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget to a hierarchy of widgets. The root widget takes care of providing the
/// connection to the windowing system and manages layout, drawing and event delivery
/// for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
public struct RootRef: RootProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkRoot` instance.
    /// For type-safe access, use the generated, typed pointer `root_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RootRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRoot>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRoot>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRoot>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRoot>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `RootProtocol`
    @inlinable init<T: RootProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: RootProtocol>(_ other: T) -> RootRef { RootRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Root` type acts as a reference-counted owner of an underlying `GtkRoot` instance.
/// It provides the methods that can operate on this data type through `RootProtocol` conformance.
/// Use `Root` as a strong reference or owner of a `GtkRoot` instance.
///
/// `GtkRoot` is the interface implemented by all widgets that can act as a toplevel
/// widget to a hierarchy of widgets. The root widget takes care of providing the
/// connection to the windowing system and manages layout, drawing and event delivery
/// for its widget hierarchy.
/// 
/// The obvious example of a `GtkRoot` is `GtkWindow`.
open class Root: Native, RootProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRoot>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRoot>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRoot>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRoot>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRoot`.
    /// i.e., ownership is transferred to the `Root` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRoot>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RootProtocol`
    /// Will retain `GtkRoot`.
    /// - Parameter other: an instance of a related type that implements `RootProtocol`
    @inlinable public init<T: RootProtocol>(root other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RootProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum RootPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
}

public extension RootProtocol {
    /// Bind a `RootPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: RootPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Root property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: RootPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Root property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: RootPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Root has no signals// MARK: Root Interface: RootProtocol extension (methods and fields)
public extension RootProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRoot` instance.
    @inlinable var root_ptr: UnsafeMutablePointer<GtkRoot>! { return ptr?.assumingMemoryBound(to: GtkRoot.self) }

    /// Returns the display that this GtkRoot is on.
    @inlinable func getDisplay() -> Gdk.DisplayRef! {
        let rv = Gdk.DisplayRef(gtk_root_get_display(root_ptr))
        return rv
    }

    /// Retrieves the current focused widget within the root.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the root is active; if the root is not focused then
    /// `gtk_widget_has_focus (widget)` will be `false` for the
    /// widget.
    @inlinable func getFocus() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_root_get_focus(root_ptr))) else { return nil }
        return rv
    }

    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the root. If `focus` is `nil`, unsets
    /// the focus widget for the root.
    /// 
    /// To set the focus to a particular widget in the root, it is usually
    /// more convenient to use `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set(focus: WidgetRef? = nil) {
        gtk_root_set_focus(root_ptr, focus?.widget_ptr)
    
    }
    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the root. If `focus` is `nil`, unsets
    /// the focus widget for the root.
    /// 
    /// To set the focus to a particular widget in the root, it is usually
    /// more convenient to use `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set<WidgetT: WidgetProtocol>(focus: WidgetT?) {
        gtk_root_set_focus(root_ptr, focus?.widget_ptr)
    
    }
    /// Returns the display that this GtkRoot is on.
    @inlinable var display: Gdk.DisplayRef! {
        /// Returns the display that this GtkRoot is on.
        get {
            let rv = Gdk.DisplayRef(gtk_root_get_display(root_ptr))
            return rv
        }
    }

    /// Retrieves the current focused widget within the root.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the root is active; if the root is not focused then
    /// `gtk_widget_has_focus (widget)` will be `false` for the
    /// widget.
    @inlinable var focus: WidgetRef! {
        /// Retrieves the current focused widget within the root.
        /// 
        /// Note that this is the widget that would have the focus
        /// if the root is active; if the root is not focused then
        /// `gtk_widget_has_focus (widget)` will be `false` for the
        /// widget.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_root_get_focus(root_ptr))) else { return nil }
            return rv
        }
        /// If `focus` is not the current focus widget, and is focusable, sets
        /// it as the focus widget for the root. If `focus` is `nil`, unsets
        /// the focus widget for the root.
        /// 
        /// To set the focus to a particular widget in the root, it is usually
        /// more convenient to use `gtk_widget_grab_focus()` instead of this function.
        nonmutating set {
            gtk_root_set_focus(root_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



// MARK: - Scrollable Interface

/// The `ScrollableProtocol` protocol exposes the methods and properties of an underlying `GtkScrollable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scrollable`.
/// Alternatively, use `ScrollableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
public protocol ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollable` instance.
    var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { get }

}

/// The `ScrollableRef` type acts as a lightweight Swift reference to an underlying `GtkScrollable` instance.
/// It exposes methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `ScrollableRef` only as an `unowned` reference to an existing `GtkScrollable` instance.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
public struct ScrollableRef: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollable>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    @inlinable init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Scrollable` type acts as an owner of an underlying `GtkScrollable` instance.
/// It provides the methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `Scrollable` as a strong reference or owner of a `GtkScrollable` instance.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
open class Scrollable: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkScrollable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkScrollable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    /// `GtkScrollable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScrollableProtocol`
    @inlinable public init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Do-nothing destructor for `GtkScrollable`.
    deinit {
        // no reference counting for GtkScrollable, cannot unref(scrollable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }



}

public enum ScrollablePropertyName: String, PropertyNameProtocol {
    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    case hadjustment = "hadjustment"
    /// Determines whether horizontal scrolling should start once the scrollable
    /// widget is allocated less than its minimum width or less than its natural width.
    case hscrollPolicy = "hscroll-policy"
    /// Vertical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    case vadjustment = "vadjustment"
    /// Determines whether vertical scrolling should start once the scrollable
    /// widget is allocated less than its minimum height or less than its natural height.
    case vscrollPolicy = "vscroll-policy"
}

public extension ScrollableProtocol {
    /// Bind a `ScrollablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScrollablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Scrollable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ScrollablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Scrollable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ScrollablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Scrollable has no signals// MARK: Scrollable Interface: ScrollableProtocol extension (methods and fields)
public extension ScrollableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollable` instance.
    @inlinable var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { return ptr?.assumingMemoryBound(to: GtkScrollable.self) }

    /// Returns the size of a non-scrolling border around the
    /// outside of the scrollable. An example for this would
    /// be treeview headers. GTK can use this information to
    /// display overlaid graphics, like the overshoot indication,
    /// at the right position.
    @inlinable func get<BorderT: BorderProtocol>(border: BorderT) -> Bool {
        let rv = ((gtk_scrollable_get_border(scrollable_ptr, border.border_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
    @inlinable func getHadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable func getHscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for vertical scrolling.
    @inlinable func getVadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable func getVscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
        return rv
    }

    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set(hadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }
    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(hadjustment: AdjustmentT?) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// horizontal scrolling should start below the minimum width or
    /// below the natural width.
    @inlinable func setHscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_hscroll_policy(scrollable_ptr, policy)
    
    }

    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set(vadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }
    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(vadjustment: AdjustmentT?) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// vertical scrolling should start below the minimum height or
    /// below the natural height.
    @inlinable func setVscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_vscroll_policy(scrollable_ptr, policy)
    
    }
    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    @inlinable var hadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the horizontal adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_hadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable var hscrollPolicy: GtkScrollablePolicy {
        /// Gets the horizontal `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// horizontal scrolling should start below the minimum width or
        /// below the natural width.
        nonmutating set {
            gtk_scrollable_set_hscroll_policy(scrollable_ptr, newValue)
        }
    }

    /// Vertical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    @inlinable var vadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for vertical scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the vertical adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_vadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable var vscrollPolicy: GtkScrollablePolicy {
        /// Gets the vertical `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// vertical scrolling should start below the minimum height or
        /// below the natural height.
        nonmutating set {
            gtk_scrollable_set_vscroll_policy(scrollable_ptr, newValue)
        }
    }


}


