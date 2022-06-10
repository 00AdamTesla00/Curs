class SymTable:
	"""Symbol Table data structure"""
	def __init__(self):
		self.currentScope = Scope(parent=None,name='root')
		self.temp_var_count = 0;
		self.label_count = 0;
		self.scope_list = {'root':self.currentScope}

	def show_me_func_entrypoint(self,scope):   #get_func_entrylist
		if scope.name != 'root':
			parent = scope.parentScope
			return parent.EntryList[scope.name]
		else :
			return None

	def create_temporarly(self,s_entry={},typ='',width=4,name='',array_access=False):   #new_temp
		self.temp_var_count += 1
		name2 = "t" + str(self.temp_var_count)
		self.currentScope.get_temporarly(name2,typ,width,name,s_entry,array_access)
		return name2

	def create_label(self):    #new_label
		self.label_count += 1
		return "label_" + str(self.label_count)

	def start_view_range(self,name):   #begin_s-cope
		self.currentScope = Scope(parent=self.currentScope,name=name)
		self.scope_list[name] = self.currentScope

	def finish_view_range(self):    #end_s-cope
		self.currentScope = self.currentScope.parentScope

	'''def print_temp(self):   #print_t-emp
		for sc_name in self.scope_list:
			print(sc_name)
			print(self.scope_list[sc_name].tempList)'''

class Scope:
	def __init__(self,parent,name):
		self.EntryList = {'integer':{'type':'typedef', 'width': 4},
							'real':{'type':'typedef', 'width': 4},
							'string':{'type':'typedef', 'width': 4}
						} # include boolean, long , float etc.
		self.tempList = {}
		self.width = 0
		self.num_entries = 0
		self.parentScope = parent
		self.name = name

	def search_up(self,name):   #look_up
		scope = self
		while(scope is not None):
			if name in scope.EntryList:
				return scope.EntryList[name]
			else:
				scope = scope.parentScope
		return None

	def get_identificator(self,name):              #add_id
		self.EntryList[name] = {}
		self.num_entries += 1
		self.EntryList[name]['name'] = name
		return self.EntryList[name]

	def re_get_identificator(self,name,id_dict):   #update_id
		req_id_dict = self.search_up(name=name)
		if req_id_dict is None:
			print( "Can't update since such an identifier didn't exist")
		else:
			for id_key in id_dict:
				req_id_dict[id_key] = id_dict[id_key]

	def get_temporarly(self,name,typ,width,corres_identifier,s_entry,arr_access):  #add_temp
		self.tempList[name] = {'offset':self.width,'width':width,'type':typ,'corres_identifier':corres_identifier,'s_entry':s_entry,'array_access':arr_access}
		self.width += width
		self.tempList[name]['name'] = name
		return self.tempList[name]