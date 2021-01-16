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

// MARK: - Accessible Interface

/// The `AccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Accessible`.
/// Alternatively, use `AccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkAccessible provides an interface for describing a UI element, like a
/// `GtkWidget`, in a way that can be consumed by Assistive Technologies, or
/// “AT”. Every accessible implementation has:
/// 
///  - a “role”, represented by a value of the `GtkAccessibleRole` enumeration
///  - an “attribute”, represented by a set of `GtkAccessibleState`,
///    `GtkAccessibleProperty` and `GtkAccessibleRelation` values
/// 
/// The role cannot be changed after instantiating a `GtkAccessible`
/// implementation.
/// 
/// The attributes are updated every time a UI element's state changes in a way that
/// should be reflected by assistive technologies. For instance, if a `GtkWidget`
/// visibility changes, the `GTK_ACCESSIBLE_STATE_HIDDEN` state will also change
/// to reflect the `GtkWidget:visible` property.
public protocol AccessibleProtocol {
        /// Untyped pointer to the underlying `GtkAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccessible` instance.
    var accessible_ptr: UnsafeMutablePointer<GtkAccessible>! { get }

}

/// The `AccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkAccessible` instance.
/// It exposes methods that can operate on this data type through `AccessibleProtocol` conformance.
/// Use `AccessibleRef` only as an `unowned` reference to an existing `GtkAccessible` instance.
///
/// GtkAccessible provides an interface for describing a UI element, like a
/// `GtkWidget`, in a way that can be consumed by Assistive Technologies, or
/// “AT”. Every accessible implementation has:
/// 
///  - a “role”, represented by a value of the `GtkAccessibleRole` enumeration
///  - an “attribute”, represented by a set of `GtkAccessibleState`,
///    `GtkAccessibleProperty` and `GtkAccessibleRelation` values
/// 
/// The role cannot be changed after instantiating a `GtkAccessible`
/// implementation.
/// 
/// The attributes are updated every time a UI element's state changes in a way that
/// should be reflected by assistive technologies. For instance, if a `GtkWidget`
/// visibility changes, the `GTK_ACCESSIBLE_STATE_HIDDEN` state will also change
/// to reflect the `GtkWidget:visible` property.
public struct AccessibleRef: AccessibleProtocol {
        /// Untyped pointer to the underlying `GtkAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccessible>?) {
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

    /// Reference intialiser for a related type that implements `AccessibleProtocol`
    @inlinable init<T: AccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Accessible` type acts as an owner of an underlying `GtkAccessible` instance.
/// It provides the methods that can operate on this data type through `AccessibleProtocol` conformance.
/// Use `Accessible` as a strong reference or owner of a `GtkAccessible` instance.
///
/// GtkAccessible provides an interface for describing a UI element, like a
/// `GtkWidget`, in a way that can be consumed by Assistive Technologies, or
/// “AT”. Every accessible implementation has:
/// 
///  - a “role”, represented by a value of the `GtkAccessibleRole` enumeration
///  - an “attribute”, represented by a set of `GtkAccessibleState`,
///    `GtkAccessibleProperty` and `GtkAccessibleRelation` values
/// 
/// The role cannot be changed after instantiating a `GtkAccessible`
/// implementation.
/// 
/// The attributes are updated every time a UI element's state changes in a way that
/// should be reflected by assistive technologies. For instance, if a `GtkWidget`
/// visibility changes, the `GTK_ACCESSIBLE_STATE_HIDDEN` state will also change
/// to reflect the `GtkWidget:visible` property.
open class Accessible: AccessibleProtocol {
        /// Untyped pointer to the underlying `GtkAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAccessible>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkAccessible` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Accessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAccessible>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }

    /// Reference intialiser for a related type that implements `AccessibleProtocol`
    /// `GtkAccessible` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AccessibleProtocol`
    @inlinable public init<T: AccessibleProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }

    /// Do-nothing destructor for `GtkAccessible`.
    deinit {
        // no reference counting for GtkAccessible, cannot unref(accessible_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkAccessible, cannot ref(accessible_ptr)
    }



}

public enum AccessiblePropertyName: String, PropertyNameProtocol {
    /// The accessible role of the given `GtkAccessible` implementation.
    /// 
    /// The accessible role cannot be changed once set.
    case accessibleRole = "accessible-role"
}

public extension AccessibleProtocol {
    /// Bind a `AccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Accessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Accessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Accessible has no signals// MARK: Accessible Interface: AccessibleProtocol extension (methods and fields)
public extension AccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessible` instance.
    @inlinable var accessible_ptr: UnsafeMutablePointer<GtkAccessible>! { return ptr?.assumingMemoryBound(to: GtkAccessible.self) }

    /// Retrieves the `GtkAccessibleRole` for the given `GtkAccessible`.
    @inlinable func getAccessibleRole() -> GtkAccessibleRole {
        let rv = gtk_accessible_get_accessible_role(accessible_ptr)
        return rv
    }

    /// Resets the accessible `property` to its default value.
    @inlinable func reset(property: GtkAccessibleProperty) {
        gtk_accessible_reset_property(accessible_ptr, property)
    
    }

    /// Resets the accessible `relation` to its default value.
    @inlinable func reset(relation: GtkAccessibleRelation) {
        gtk_accessible_reset_relation(accessible_ptr, relation)
    
    }

    /// Resets the accessible `state` to its default value.
    @inlinable func reset(state: GtkAccessibleState) {
        gtk_accessible_reset_state(accessible_ptr, state)
    
    }


    // *** updateProperty() is not available because it has a varargs (...) parameter!


    /// Updates an array of accessible properties.
    /// 
    /// This function should be called by `GtkWidget` types whenever an accessible
    /// property change must be communicated to assistive technologies.
    /// 
    /// This function is meant to be used by language bindings.
    @inlinable func updatePropertyValue(nProperties: Int, properties: UnsafeMutablePointer<GtkAccessibleProperty>!, values: UnsafePointer<GValue>!) {
        gtk_accessible_update_property_value(accessible_ptr, gint(nProperties), properties, values)
    
    }


    // *** updateRelation() is not available because it has a varargs (...) parameter!


    /// Updates an array of accessible relations.
    /// 
    /// This function should be called by `GtkWidget` types whenever an accessible
    /// relation change must be communicated to assistive technologies.
    /// 
    /// This function is meant to be used by language bindings.
    @inlinable func updateRelationValue(nRelations: Int, relations: UnsafeMutablePointer<GtkAccessibleRelation>!, values: UnsafePointer<GValue>!) {
        gtk_accessible_update_relation_value(accessible_ptr, gint(nRelations), relations, values)
    
    }


    // *** updateState() is not available because it has a varargs (...) parameter!


    /// Updates an array of accessible states.
    /// 
    /// This function should be called by `GtkWidget` types whenever an accessible
    /// state change must be communicated to assistive technologies.
    /// 
    /// This function is meant to be used by language bindings.
    @inlinable func updateStateValue(nStates: Int, states: UnsafeMutablePointer<GtkAccessibleState>!, values: UnsafePointer<GValue>!) {
        gtk_accessible_update_state_value(accessible_ptr, gint(nStates), states, values)
    
    }

    @inlinable func testAccessibleAssertionMessageRole(domain: UnsafePointer<CChar>!, file: UnsafePointer<CChar>!, line: Int, `func`: UnsafePointer<CChar>!, expr: UnsafePointer<CChar>!, expectedRole: GtkAccessibleRole, actualRole: GtkAccessibleRole) {
        gtk_test_accessible_assertion_message_role(domain, file, gint(line), `func`, expr, accessible_ptr, expectedRole, actualRole)
    
    }


    // *** testAccessibleCheckProperty() is not available because it has a varargs (...) parameter!



    // *** testAccessibleCheckRelation() is not available because it has a varargs (...) parameter!



    // *** testAccessibleCheckState() is not available because it has a varargs (...) parameter!


    /// Checks whether the `GtkAccessible` has `property` set.
    @inlinable func testAccessibleHas(property: GtkAccessibleProperty) -> Bool {
        let rv = ((gtk_test_accessible_has_property(accessible_ptr, property)) != 0)
        return rv
    }

    /// Checks whether the `GtkAccessible` has `relation` set.
    @inlinable func testAccessibleHas(relation: GtkAccessibleRelation) -> Bool {
        let rv = ((gtk_test_accessible_has_relation(accessible_ptr, relation)) != 0)
        return rv
    }

    /// Checks whether the `GtkAccessible:accessible`-role of the accessible
    /// is `role`.
    @inlinable func testAccessibleHas(role: GtkAccessibleRole) -> Bool {
        let rv = ((gtk_test_accessible_has_role(accessible_ptr, role)) != 0)
        return rv
    }

    /// Checks whether the `GtkAccessible` has `state` set.
    @inlinable func testAccessibleHas(state: GtkAccessibleState) -> Bool {
        let rv = ((gtk_test_accessible_has_state(accessible_ptr, state)) != 0)
        return rv
    }
    /// Retrieves the `GtkAccessibleRole` for the given `GtkAccessible`.
    @inlinable var accessibleRole: GtkAccessibleRole {
        /// Retrieves the `GtkAccessibleRole` for the given `GtkAccessible`.
        get {
            let rv = gtk_accessible_get_accessible_role(accessible_ptr)
            return rv
        }
    }


}



// MARK: - Actionable Interface

/// The `ActionableProtocol` protocol exposes the methods and properties of an underlying `GtkActionable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Actionable`.
/// Alternatively, use `ActionableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
public protocol ActionableProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkActionable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionable` instance.
    var actionable_ptr: UnsafeMutablePointer<GtkActionable>! { get }

}

/// The `ActionableRef` type acts as a lightweight Swift reference to an underlying `GtkActionable` instance.
/// It exposes methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `ActionableRef` only as an `unowned` reference to an existing `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
public struct ActionableRef: ActionableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkActionable` instance.
    /// For type-safe access, use the generated, typed pointer `actionable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionable>?) {
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

    /// Reference intialiser for a related type that implements `ActionableProtocol`
    @inlinable init<T: ActionableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ActionableProtocol>(_ other: T) -> ActionableRef { ActionableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Actionable` type acts as a reference-counted owner of an underlying `GtkActionable` instance.
/// It provides the methods that can operate on this data type through `ActionableProtocol` conformance.
/// Use `Actionable` as a strong reference or owner of a `GtkActionable` instance.
///
/// This interface provides a convenient way of associating widgets with
/// actions on a `GtkApplicationWindow` or `GtkApplication`.
/// 
/// It primarily consists of two properties: `GtkActionable:action`-name
/// and `GtkActionable:action`-target. There are also some convenience APIs
/// for setting these properties.
/// 
/// The action will be looked up in action groups that are found among
/// the widgets ancestors. Most commonly, these will be the actions with
/// the “win.” or “app.” prefix that are associated with the `GtkApplicationWindow`
/// or `GtkApplication`, but other action groups that are added with
/// `gtk_widget_insert_action_group()` will be consulted as well.
open class Actionable: Widget, ActionableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkActionable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkActionable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkActionable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkActionable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkActionable`.
    /// i.e., ownership is transferred to the `Actionable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkActionable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ActionableProtocol`
    /// Will retain `GtkActionable`.
    /// - Parameter other: an instance of a related type that implements `ActionableProtocol`
    @inlinable public init<T: ActionableProtocol>(actionable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ActionablePropertyName: String, PropertyNameProtocol {
    case actionName = "action-name"
    case actionTarget = "action-target"
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

public extension ActionableProtocol {
    /// Bind a `ActionablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Actionable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Actionable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Actionable has no signals// MARK: Actionable Interface: ActionableProtocol extension (methods and fields)
public extension ActionableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionable` instance.
    @inlinable var actionable_ptr: UnsafeMutablePointer<GtkActionable>! { return ptr?.assumingMemoryBound(to: GtkActionable.self) }

    /// Gets the action name for `actionable`.
    /// 
    /// See `gtk_actionable_set_action_name()` for more information.
    @inlinable func getActionName() -> String! {
        let rv = gtk_actionable_get_action_name(actionable_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See `gtk_actionable_set_action_target_value()` for more information.
    @inlinable func getActionTargetValue() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_actionable_get_action_target_value(actionable_ptr))
        return rv
    }

    /// Specifies the name of the action with which this widget should be
    /// associated.  If `action_name` is `nil` then the widget will be
    /// unassociated from any previous action.
    /// 
    /// Usually this function is used when the widget is located (or will be
    /// located) within the hierarchy of a `GtkApplicationWindow`.
    /// 
    /// Names are of the form “win.save” or “app.quit” for actions on the
    /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
    /// respectively.  This is the same form used for actions in the `GMenu`
    /// associated with the window.
    @inlinable func set(actionName: UnsafePointer<CChar>? = nil) {
        gtk_actionable_set_action_name(actionable_ptr, actionName)
    
    }


    // *** setActionTarget() is not available because it has a varargs (...) parameter!


    /// Sets the target value of an actionable widget.
    /// 
    /// If `target_value` is `nil` then the target value is unset.
    /// 
    /// The target value has two purposes.  First, it is used as the
    /// parameter to activation of the action associated with the
    /// `GtkActionable` widget. Second, it is used to determine if the widget
    /// should be rendered as “active” — the widget is active if the state
    /// is equal to the given target.
    /// 
    /// Consider the example of associating a set of buttons with a `GAction`
    /// with string state in a typical “radio button” situation.  Each button
    /// will be associated with the same action, but with a different target
    /// value for that action.  Clicking on a particular button will activate
    /// the action with the target of that button, which will typically cause
    /// the action’s state to change to that value. Since the action’s state
    /// is now equal to the target value of the button, the button will now
    /// be rendered as active (and the other buttons, with different targets,
    /// rendered inactive).
    @inlinable func setAction(targetValue: GLib.VariantRef? = nil) {
        gtk_actionable_set_action_target_value(actionable_ptr, targetValue?.variant_ptr)
    
    }
    /// Sets the target value of an actionable widget.
    /// 
    /// If `target_value` is `nil` then the target value is unset.
    /// 
    /// The target value has two purposes.  First, it is used as the
    /// parameter to activation of the action associated with the
    /// `GtkActionable` widget. Second, it is used to determine if the widget
    /// should be rendered as “active” — the widget is active if the state
    /// is equal to the given target.
    /// 
    /// Consider the example of associating a set of buttons with a `GAction`
    /// with string state in a typical “radio button” situation.  Each button
    /// will be associated with the same action, but with a different target
    /// value for that action.  Clicking on a particular button will activate
    /// the action with the target of that button, which will typically cause
    /// the action’s state to change to that value. Since the action’s state
    /// is now equal to the target value of the button, the button will now
    /// be rendered as active (and the other buttons, with different targets,
    /// rendered inactive).
    @inlinable func setAction<VariantT: GLib.VariantProtocol>(targetValue: VariantT?) {
        gtk_actionable_set_action_target_value(actionable_ptr, targetValue?.variant_ptr)
    
    }

    /// Sets the action-name and associated string target value of an
    /// actionable widget.
    /// 
    /// `detailed_action_name` is a string in the format accepted by
    /// `g_action_parse_detailed_name()`.
    /// 
    /// (Note that prior to version 3.22.25,
    /// this function is only usable for actions with a simple "s" target, and
    /// `detailed_action_name` must be of the form `"action`target`"` where
    /// `action` is the action name and `target` is the string to use
    /// as the target.)
    @inlinable func set(detailedActionName: UnsafePointer<CChar>!) {
        gtk_actionable_set_detailed_action_name(actionable_ptr, detailedActionName)
    
    }
    /// Gets the action name for `actionable`.
    /// 
    /// See `gtk_actionable_set_action_name()` for more information.
    @inlinable var actionName: String! {
        /// Gets the action name for `actionable`.
        /// 
        /// See `gtk_actionable_set_action_name()` for more information.
        get {
            let rv = gtk_actionable_get_action_name(actionable_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Specifies the name of the action with which this widget should be
        /// associated.  If `action_name` is `nil` then the widget will be
        /// unassociated from any previous action.
        /// 
        /// Usually this function is used when the widget is located (or will be
        /// located) within the hierarchy of a `GtkApplicationWindow`.
        /// 
        /// Names are of the form “win.save” or “app.quit” for actions on the
        /// containing `GtkApplicationWindow` or its associated `GtkApplication`,
        /// respectively.  This is the same form used for actions in the `GMenu`
        /// associated with the window.
        nonmutating set {
            gtk_actionable_set_action_name(actionable_ptr, newValue)
        }
    }

    /// Gets the current target value of `actionable`.
    /// 
    /// See `gtk_actionable_set_action_target_value()` for more information.
    @inlinable var actionTargetValue: GLib.VariantRef! {
        /// Gets the current target value of `actionable`.
        /// 
        /// See `gtk_actionable_set_action_target_value()` for more information.
        get {
            let rv = GLib.VariantRef(gtk_actionable_get_action_target_value(actionable_ptr))
            return rv
        }
        /// Sets the target value of an actionable widget.
        /// 
        /// If `target_value` is `nil` then the target value is unset.
        /// 
        /// The target value has two purposes.  First, it is used as the
        /// parameter to activation of the action associated with the
        /// `GtkActionable` widget. Second, it is used to determine if the widget
        /// should be rendered as “active” — the widget is active if the state
        /// is equal to the given target.
        /// 
        /// Consider the example of associating a set of buttons with a `GAction`
        /// with string state in a typical “radio button” situation.  Each button
        /// will be associated with the same action, but with a different target
        /// value for that action.  Clicking on a particular button will activate
        /// the action with the target of that button, which will typically cause
        /// the action’s state to change to that value. Since the action’s state
        /// is now equal to the target value of the button, the button will now
        /// be rendered as active (and the other buttons, with different targets,
        /// rendered inactive).
        nonmutating set {
            gtk_actionable_set_action_target_value(actionable_ptr, UnsafeMutablePointer<GVariant>(newValue?.variant_ptr))
        }
    }


}



// MARK: - AppChooser Interface

/// The `AppChooserProtocol` protocol exposes the methods and properties of an underlying `GtkAppChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppChooser`.
/// Alternatively, use `AppChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
public protocol AppChooserProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkAppChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAppChooser` instance.
    var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser>! { get }

}

/// The `AppChooserRef` type acts as a lightweight Swift reference to an underlying `GtkAppChooser` instance.
/// It exposes methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooserRef` only as an `unowned` reference to an existing `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
public struct AppChooserRef: AppChooserProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkAppChooser` instance.
    /// For type-safe access, use the generated, typed pointer `app_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAppChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAppChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAppChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAppChooser>?) {
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

    /// Reference intialiser for a related type that implements `AppChooserProtocol`
    @inlinable init<T: AppChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: AppChooserProtocol>(_ other: T) -> AppChooserRef { AppChooserRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppChooser` type acts as a reference-counted owner of an underlying `GtkAppChooser` instance.
/// It provides the methods that can operate on this data type through `AppChooserProtocol` conformance.
/// Use `AppChooser` as a strong reference or owner of a `GtkAppChooser` instance.
///
/// `GtkAppChooser` is an interface that can be implemented by widgets which
/// allow the user to choose an application (typically for the purpose of
/// opening a file). The main objects that implement this interface are
/// `GtkAppChooserWidget`, `GtkAppChooserDialog` and `GtkAppChooserButton`.
/// 
/// Applications are represented by GIO `GAppInfo` objects here.
/// GIO has a concept of recommended and fallback applications for a
/// given content type. Recommended applications are those that claim
/// to handle the content type itself, while fallback also includes
/// applications that handle a more generic content type. GIO also
/// knows the default and last-used application for a given content
/// type. The `GtkAppChooserWidget` provides detailed control over
/// whether the shown list of applications should include default,
/// recommended or fallback applications.
/// 
/// To obtain the application that has been selected in a `GtkAppChooser`,
/// use `gtk_app_chooser_get_app_info()`.
open class AppChooser: Widget, AppChooserProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkAppChooser>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkAppChooser>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkAppChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkAppChooser>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkAppChooser`.
    /// i.e., ownership is transferred to the `AppChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkAppChooser>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `AppChooserProtocol`
    /// Will retain `GtkAppChooser`.
    /// - Parameter other: an instance of a related type that implements `AppChooserProtocol`
    @inlinable public init<T: AppChooserProtocol>(appChooser other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum AppChooserPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The content type of the `GtkAppChooser` object.
    /// 
    /// See [GContentType](#gio-GContentType)
    /// for more information about content types.
    case contentType = "content-type"
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

public extension AppChooserProtocol {
    /// Bind a `AppChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: AppChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a AppChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: AppChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: AppChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: AppChooser has no signals// MARK: AppChooser Interface: AppChooserProtocol extension (methods and fields)
public extension AppChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAppChooser` instance.
    @inlinable var app_chooser_ptr: UnsafeMutablePointer<GtkAppChooser>! { return ptr?.assumingMemoryBound(to: GtkAppChooser.self) }

    /// Returns the currently selected application.
    @inlinable func getAppInfo() -> GIO.AppInfoRef! {
        let rv = GIO.AppInfoRef(gtk_app_chooser_get_app_info(app_chooser_ptr))
        return rv
    }

    /// Returns the current value of the `GtkAppChooser:content`-type property.
    @inlinable func getContentType() -> String! {
        let rv = gtk_app_chooser_get_content_type(app_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Reloads the list of applications.
    @inlinable func refresh() {
        gtk_app_chooser_refresh(app_chooser_ptr)
    
    }
    /// Returns the currently selected application.
    @inlinable var appInfo: GIO.AppInfoRef! {
        /// Returns the currently selected application.
        get {
            let rv = GIO.AppInfoRef(gtk_app_chooser_get_app_info(app_chooser_ptr))
            return rv
        }
    }

    /// Returns the current value of the `GtkAppChooser:content`-type property.
    @inlinable var contentType: String! {
        /// Returns the current value of the `GtkAppChooser:content`-type property.
        get {
            let rv = gtk_app_chooser_get_content_type(app_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - Buildable Interface

/// The `BuildableProtocol` protocol exposes the methods and properties of an underlying `GtkBuildable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Buildable`.
/// Alternatively, use `BuildableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public protocol BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildable` instance.
    var buildable_ptr: UnsafeMutablePointer<GtkBuildable>! { get }

}

/// The `BuildableRef` type acts as a lightweight Swift reference to an underlying `GtkBuildable` instance.
/// It exposes methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `BuildableRef` only as an `unowned` reference to an existing `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
public struct BuildableRef: BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildable>?) {
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

    /// Reference intialiser for a related type that implements `BuildableProtocol`
    @inlinable init<T: BuildableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Buildable` type acts as an owner of an underlying `GtkBuildable` instance.
/// It provides the methods that can operate on this data type through `BuildableProtocol` conformance.
/// Use `Buildable` as a strong reference or owner of a `GtkBuildable` instance.
///
/// GtkBuildable allows objects to extend and customize their deserialization
/// from [GtkBuilder UI descriptions](#BUILDER-UI).
/// The interface includes methods for setting names and properties of objects,
/// parsing custom tags and constructing child objects.
/// 
/// The GtkBuildable interface is implemented by all widgets and
/// many of the non-widget objects that are provided by GTK. The
/// main user of this interface is `GtkBuilder`. There should be
/// very little need for applications to call any of these functions directly.
/// 
/// An object only needs to implement this interface if it needs to extend the
/// `GtkBuilder` format or run any extra routines at deserialization time.
open class Buildable: BuildableProtocol {
        /// Untyped pointer to the underlying `GtkBuildable` instance.
    /// For type-safe access, use the generated, typed pointer `buildable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuildable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuildable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBuildable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Buildable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuildable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Reference intialiser for a related type that implements `BuildableProtocol`
    /// `GtkBuildable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BuildableProtocol`
    @inlinable public init<T: BuildableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Do-nothing destructor for `GtkBuildable`.
    deinit {
        // no reference counting for GtkBuildable, cannot unref(buildable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBuildable, cannot ref(buildable_ptr)
    }



}

// MARK: no Buildable properties

// MARK: Buildable has no signals// MARK: Buildable Interface: BuildableProtocol extension (methods and fields)
public extension BuildableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildable` instance.
    @inlinable var buildable_ptr: UnsafeMutablePointer<GtkBuildable>! { return ptr?.assumingMemoryBound(to: GtkBuildable.self) }

    /// Gets the ID of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition](#BUILDER-UI)
    /// used to construct the `buildable`.
    @inlinable func getBuildableId() -> String! {
        let rv = gtk_buildable_get_buildable_id(buildable_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Gets the ID of the `buildable` object.
    /// 
    /// `GtkBuilder` sets the name based on the
    /// [GtkBuilder UI definition](#BUILDER-UI)
    /// used to construct the `buildable`.
    @inlinable var buildableId: String! {
        /// Gets the ID of the `buildable` object.
        /// 
        /// `GtkBuilder` sets the name based on the
        /// [GtkBuilder UI definition](#BUILDER-UI)
        /// used to construct the `buildable`.
        get {
            let rv = gtk_buildable_get_buildable_id(buildable_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}


